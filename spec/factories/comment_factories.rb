require 'faker'

FactoryBot.define do
  factory :comment do
    commenter
    message { Faker::MichaelScott.quote }
  end
end
