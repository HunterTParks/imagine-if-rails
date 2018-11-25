require 'faker'

FactoryBot.define do
  factory :comment do
    message { Faker::MichaelScott.quote }
  end
end
