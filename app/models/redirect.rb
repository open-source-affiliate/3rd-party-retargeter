class Redirect < ActiveRecord::Base
  # name
  # url
  # facebook_pixel_id
  # perfect_audience_advertiser_id
  # adroll_advertiser_id
  # adroll_pixel_id
  # other_js
  ####### belongs_to :user

  # Callbacks
  before_validation :sanitize_name
  after_save :update_static_files

  # Validations
  validates :name, presence: true, uniqueness: true
  # Hard to do correctly ... http://stackoverflow.com/questions/7167895
  validates :url, presence: true, format: URI::regexp(%w(http https))
  validate :js_present?
  validate :adroll_complete?

  def public_write
    write_new_file
  end

  private
  def update_static_files
    #delete_old_file
    write_new_file
  end

  def delete_old_file
    # TODO: Is this necessary?
  end

  def write_new_file
    ac = ActionController::Base.new
    output = ac.render_to_string(
      template: 'redirects/redirect',
      layout: 'redirect',
      locals: {
        :@name => name,
        :@url => url,
        :@facebook_pixel_id => facebook_pixel_id,
        :@perfect_audience_advertiser_id => perfect_audience_advertiser_id,
        :@adroll_advertiser_id => adroll_advertiser_id,
        :@adroll_pixel_id => adroll_pixel_id,
        :@other_js => other_js
      }
    )
    save_path = Rails.root.join('public', "#{name}.html")
    File.open(save_path, 'w') do |file|
      file << output
    end
  rescue => e
    Rails.logger.error "Redirect#write_new_file fail: #{e} #{self.inspect}"
  end

  def sanitize_name
    self.name = self.name.parameterize if name
  end

  def js_present?
    if %w(facebook_pixel_id perfect_audience_advertiser_id adroll_advertiser_id other_js).all?{|attr| self[attr].blank?}
      errors.add :base, "At least one Tracking Pixel must be active."
    end
  end

  def adroll_complete?
    if adroll_advertiser_id && !adroll_pixel_id
      errors.add :base, "Adroll Pixel ID required."
    end
    if !adroll_advertiser_id && adroll_pixel_id
      errors.add :base, "Adroll Advertiser ID required."
    end
  end


end
