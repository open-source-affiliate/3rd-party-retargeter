class CreateRedirects < ActiveRecord::Migration
  def change
    create_table :redirects do |t|
      t.string :name, unique: true, null: false
      t.text :url, null: false
      t.string :facebook_pixel_id, index: true
      t.string :perfect_audience_advertiser_id, index: true
      t.string :adroll_advertiser_id, index: true
      t.string :adroll_pixel_id, index: true
      t.text :other_js

      t.timestamps null: false
    end
  end
end
