FactoryGirl.define do
  factory :user do
    sequence(:email) {|i| "email#{i}@mail.com"}
    password "123456"
  end
end