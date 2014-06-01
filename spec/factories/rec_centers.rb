# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rec_center do
    name "MyString"
    lat 1.5
    lng 1.5
    facilities "MyString"
    programs "MyString"
    phone "MyString"
    address "MyString"
  end
end
