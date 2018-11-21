require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet::Email }
  end
end
