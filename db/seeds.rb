# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sopa = { name: "Sopa", address: "23 de enero", phone_number: 0101, category: "chinese" }
pizza = { name: "Pizza", address: "catia", phone_number: 0102, category: "italian" }
hamburguesa = { name: "Hamburguesa", address: "mirador", phone_number: 0103, category: "japanese" }
arepa = { name: "Arepa", address: "altamira", phone_number: 0104, category: "french" }
empanada = { name: "Empanada", address: "plaza venezuela", phone_number: 0105, category: "belgian" }

[ sopa, pizza, hamburguesa, arepa, empanada ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"