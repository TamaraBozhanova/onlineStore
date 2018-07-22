FactoryGirl.define do
  factory :line_item do
    association (:phone)
    association (:cart)
    quantity 3
  end
end