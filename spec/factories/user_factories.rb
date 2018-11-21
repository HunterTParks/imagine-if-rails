require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    Username { Faker::Lorem.word}
  end
end
