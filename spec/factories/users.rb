# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:name) { |t| "Dummy User #{t}" } 
    sequence(:password) { |t| "12312#{t}" } 
  end
end
