# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

puts "Create new restaurants"
momo = { name: "Momo Sushi", address: "Saint-Denis",  category: "japanese" }
pizza = { name: "Pizza Napolitena", address: "Saint-Viateur",  category: "italian" }
french = { name: "French caviar", address: "Paris",  category: "french" }

[momo, pizza, french].each do |a|
  restaurant = Restaurant.create(a)
  puts "Create #{restaurant.name}"
end
