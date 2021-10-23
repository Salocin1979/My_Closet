# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database..."
Outfit.destroy_all
User.destroy_all
puts "Database cleaned"

puts "Creating a user in the database..."
user_one = User.create!(first_name: "jean - pierre", last_name: "dupuche", email: "jeanpierre@gmail.com", password:"123456")

puts "Creating the outfit in the database..."
Outfit.create!  title: "ASOS",
                category: "Date Night",
                description: "ASOS DESIGN Midi Dress with Cut Outs and Lace in Mono Embroidery",
                picture_url: "https://images.unsplash.com/photo-1595777457583-95e059d581b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=966&q=80",
                price: 2500,
                user: user_one
Outfit.create!  title: "FINDERS KEEPERS",
                category: "Date Night",
                description: "Finders Keepers Red Gabriella Dress",
                picture_url: "https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=688&q=80",
                price: 3000,
                user: user_one
Outfit.create!  title: "ARUNAWAY THE LABELSOS",
                category: "Party",
                description: "Runaway The Label Disco Pouffe Mini Dress",
                picture_url: "https://images.unsplash.com/photo-1617391834150-a708bdb1fe8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=920&q=80",
                price: 3500,
                user: user_one
Outfit.create!  title: "Hillstree",
                category: "Bridesmaid",
                description: "ASOS DESIGN BRIDESMAID KNOT FRONT MAXI DRESS",
                picture_url: "https://images.unsplash.com/photo-1533659828870-95ee305cee3e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
                price: 1500,
                user: user_one
Outfit.create!  title: "PANAMBI",
                category: "Wedding",
                description: "Panambi Pink Print One Shoulder Midi Dress",
                picture_url: "https://images.unsplash.com/photo-1609357605129-26f69add5d6e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
                price: 2800,
                user: user_one
Outfit.create!  title: "RELIGION",
                category: "Coat",
                description: "Religion Brindle Favour Coat",
                picture_url: "https://images.unsplash.com/photo-1575818302670-7e90c19c9082?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                price: 3000,
                user: user_one

Outfit.create!  title: "SEVEN WONDERS",
                category: "Playtime",
                description: "Seven Wonders Floral Co-Ord",
                picture_url: "https://images.unsplash.com/photo-1600102427329-d5b2cde7e162?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
                price: 2300,
                user: user_one
Outfit.create!  title: "LAVISH ALICE",
                category: "Black Tie",
                description: "Lavish Alice Black Floral Velvet Devore Balloon Sleeve Mini Dress",
                picture_url: "https://images.unsplash.com/photo-1496217590455-aa63a8350eea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80",
                price: 4000,
                user: user_one
Outfit.create!  title: "LAVISH ALICE",
                category: "Casual",
                description: "Lavish Alice Navy Tie Detail Jumpsuit",
                picture_url: "https://images.unsplash.com/photo-1588824051376-0063738d61e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                price: 1800,
                user: user_one
Outfit.create!  title: "ASOS",
                category: "Christmas Party",
                description: "ASOS EDITION Crystal Embellished Mini Dress with Faux Feather Hem",
                picture_url: "https://images.unsplash.com/photo-1559629008-529e95644695?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                price: 3000,
                user: user_one
puts "Finished building up database..."
