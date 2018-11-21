require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Lorem.word }
    password  { Faker::ParksAndRec.character }
  end
end
