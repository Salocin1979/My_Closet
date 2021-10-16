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
user_one = User.create!(first_name: "nicolas", last_name: "bagnath", email: "nicolas.bagnath@gmail.com", password:"123456")

puts "Creating the outfit in the database..."
Outfit.create!  title: "ASOS",
                category: "Date Night",  
                description: "ASOS DESIGN Midi Dress with Cut Outs and Lace in Mono Embroidery", 
                picture_url: "https://media.istockphoto.com/photos/young-black-woman-with-curly-hair-in-yellow-dress-and-with-styles-picture-id1295901898?s=612x612", 
                price: 2500, 
                user: user_one
Outfit.create!  title: "FINDERS KEEPERS",
                category: "Date Night",  
                description: "Finders Keepers Red Gabriella Dress", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5e4181babc514754094839-469x0.jpg", 
                price: 3000, 
                user: user_one
Outfit.create!  title: "ARUNAWAY THE LABELSOS",
                category: "Party",  
                description: "Runaway The Label Disco Pouffe Mini Dress", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5e4abd321bb7c171950358-469x0.jpg", 
                price: 3500, 
                user: user_one
Outfit.create!  title: "Hillstree",
                category: "Bridesmaid",  
                description: "ASOS DESIGN BRIDESMAID KNOT FRONT MAXI DRESS", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5e4182b8675bb519841498-469x0.jpg", 
                price: 1500, 
                user: user_one
Outfit.create!  title: "PANAMBI",
                category: "Wedding",  
                description: "Panambi Pink Print One Shoulder Midi Dress", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/6/609e2ffc4dee0770799295-469x0.jpg", 
                price: 2800, 
                user: user_one
Outfit.create!  title: "RELIGION",
                category: "Coat",  
                description: "Religion Brindle Favour Coat", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5f6b4c383690d552612983-469x0.jpg", 
                price: 3000, 
                user: user_one

Outfit.create!  title: "SEVEN WONDERS",
                category: "Playtime",  
                description: "Seven Wonders Floral Co-Ord", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5e4187769d507692008705-469x0.jpg", 
                price: 2300, 
                user: user_one
Outfit.create!  title: "LAVISH ALICE",
                category: "Black Tie",  
                description: "Lavish Alice Black Floral Velvet Devore Balloon Sleeve Mini Dress", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5fc7b36debede088639271-469x0.jpg", 
                price: 4000, 
                user: user_one
Outfit.create!  title: "LAVISH ALICE",
                category: "Casual",  
                description: "Lavish Alice Navy Tie Detail Jumpsuit", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/6/60d5e19b22f03079554407-469x0.jpg", 
                price: 1800, 
                user: user_one
Outfit.create!  title: "ASOS",
                category: "Christmas Party",  
                description: "ASOS EDITION Crystal Embellished Mini Dress with Faux Feather Hem", 
                picture_url: "https://d3ppw6ldakvk3c.cloudfront.net/storage/app/uploads/public/images/5/5e41829b2dcc6601168471-469x0.jpg", 
                price: 3000, 
                user: user_one
puts "Finished building up database..."