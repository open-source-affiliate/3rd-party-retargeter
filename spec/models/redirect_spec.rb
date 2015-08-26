require 'rails_helper'

RSpec.describe Redirect, type: :model do
  subject(:redirect) { build(:redirect) }

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:url) }
  it { is_expected.to respond_to(:facebook_pixel_id) }
  it { is_expected.to respond_to(:perfect_audience_advertiser_id) }
  it { is_expected.to respond_to(:adroll_advertiser_id) }
  it { is_expected.to respond_to(:adroll_pixel_id) }
  it { is_expected.to respond_to(:other_js) }

end
