# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    address "MyString"
    lat 1.5
    lng 1.5
    value 1
    property_tax 1
  end
end
