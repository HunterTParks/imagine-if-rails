require 'faker'

FactoryBot.define do
  factory :post do
    user
    title { Faker::SwordArtOnline.game_name }
    body { Faker::Lorem.word }
  end
end
