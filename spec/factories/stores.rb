# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store, :class => 'Stores' do
    lat 1.5
    lng 1.5
    name "MyString"
    address "MyString"
  end
end
