require 'faker'

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name: "#{Faker::Food.dish} #{Faker::Verb.ing_form}" ,
    address: Faker::Address.full_address,
    phone_number: "07445599",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
