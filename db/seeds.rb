# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {
  name: 'Dishoom', address: '7 Boundary St, London E2 7JE',
  category: 'japanese', phone_number: '57895000'
}
pizza_east = {
  name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ',
  category: 'italian', phone_number: '57689504'
}

mokaz = {
  name: 'Mokaz', address: 'Moka Helvetia',
  category: 'chinese', phone_number: '57689504'
}
lardoise = {
  name: 'Lardoise', address: 'Moka Helvetia',
  category: 'french', phone_number: '57546709'
}

baudelaire = {
  name: 'Baudelaire', address: 'IFM Rosehill',
  category: 'french', phone_number: '26785461'
}

[dishoom, pizza_east, mokaz, lardoise, baudelaire].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
