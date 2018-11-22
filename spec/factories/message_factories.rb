require 'faker'

FactoryBot.define do
  factory :message do
    sender
    user_id_one { 1 }
    user_id_two { 2 }
    body { Faker::Beer.name }
  end
end
