# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number:rand(27439..1000000).to_s, category: ["chinese", "italian", "japanese", "french", "belgian"].sample,)
end

# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"5649465", category:"french" }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"4598469", category:"belgian" }
# home_made = { name: "Home Made", address: "7 Boundary St, London E2 7JE", phone_number:"8466513", category:"french" }
# jamiez = { name: "Jamiez", address: "20 Canary St, London E2 7JE", phone_number:"6359822", category:"japanese" }
# olivias = { name: "Olivias", address: "30 Mountain St, London E2 7JE", phone_number:"4512616", category:"italian" }
# [ dishoom, pizza_east, home_made, jamiez, olivias ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"