require 'faker'

FactoryBot.define do
  factory :comment do
    user
    post
    message { Faker::MichaelScott.quote }
  end
end
