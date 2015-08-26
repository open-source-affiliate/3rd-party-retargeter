FactoryGirl.define do

  factory :redirect do
    sequence(:name) { |n| "redirect-#{n}" }
    sequence(:url) { |n| "http://example.com/redirect-destination-#{n}" }
    facebook_pixel_id "1234567890"
    perfect_audience_advertiser_id ""
    adroll_advertiser_id ""
    adroll_pixel_id ""
    other_js ""
  end

end
