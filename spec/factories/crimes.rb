# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :crime do
    lat 34
    lng 45
    offense 'rape'
    time Time.parse('3:00', Time.now)
    neighborhood 'Linkin Park'
  end
end
