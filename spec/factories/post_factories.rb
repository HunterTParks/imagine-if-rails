require 'faker'

FactoryBot.define do
  factory :post do
    author
    title { Faker::SwordArtOnline.character }
    body { Faker::Lorem.word }
  end
end
