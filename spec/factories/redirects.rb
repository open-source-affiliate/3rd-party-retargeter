FactoryGirl.define do
  factory :redirect do
    sequence(:name) { |n| "redirect-#{n}" }
    sequence(:url) { |n| "http://example.com/redirect-destination-#{n}" }
    facebook_js "alert(1)"
    perfect_audience_js ""
    adroll_js ""
    other_js ""
  end

end
