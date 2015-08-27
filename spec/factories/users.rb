FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@exxample.com" }
    sequence(:password) { |n| "abcdefgh#{n}" }
  end

  factory :confirmed_user, parent: :user do
    after(:create) { |user| user.confirm! }
  end

  factory :admin, parent: :confirmed_user do
    admin true
  end

end
