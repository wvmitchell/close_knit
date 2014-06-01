# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :neighborhood do
    lat 30
    lng (-150)
    name 'Somewhere'
  end
end
