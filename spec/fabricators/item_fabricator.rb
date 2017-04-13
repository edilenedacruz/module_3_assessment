Fabricator(:item) do
  name Faker::Lorem.word
  description Faker::Lorem.sentence
  image_url Faker::Avatar.image
end
