# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seeding process..."

puts "Destroy all Restaurants"

Review.destroy_all
Restaurant.destroy_all

CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Create new seeds!"

20.times do
  restaurant = Restaurant.create(
    name: Faker::Name.name,
    address: Faker::Address.street_name,
    category: CATEGORY.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  2.times do
    Review.create(
      rating: rand(6),
      content: Faker::StrangerThings.quote,
      restaurant: restaurant
    )
  end
end

puts "Finished seeding process!"
