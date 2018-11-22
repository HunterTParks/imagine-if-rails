require 'faker'

FactoryBot.define do
  factory :post do
    user_id { rand(100) }
    title { Faker::SwordArtOnline.game_name }
    body { Faker::Lorem.word }
  end
end
