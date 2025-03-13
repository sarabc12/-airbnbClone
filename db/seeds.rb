# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Flat.destroy_all
User.destroy_all

User.create(first_name: "Mario", last_name: "Dominic", email: "mariodominic@gmail.com", password:"123456")
User.create(first_name: "Adam", last_name: "Smith", email: "adamsmith@gmail.com", password:"654321")
Flat.create(title: "Cozy Studio in Downtown", description: "A beautiful and modern studio in the heart of the city.", address: "London", user: User.first, image_url: "https://imagescdn.openrent.co.uk/listings/2096021/o_1i5o16k5njhh19io1qbk11pta4j2.JPG")
Flat.create(title: "Beachfront Apartment", description: "Wake up to the sound of waves in this stunning beach apartment.", address: "Bali", user: User.first, image_url: "https://images.homhero.com.au/960x600/fa47950a-e23a-42a9-96a8-f636a69822ff/listing/97/dbd01779-d45b-215a-ae8a-5bdb943a6178.jpg")
Flat.create(title: "Spacious Loft", description: "A stylish and spacious loft with a great city view.", address: "New York", user: User.first, image_url:"https://cdn1.epicgames.com/ue/product/Screenshot/picture%202-1920x1080-ec5f7810596b9d96006b0b5b1247c2be.png?resize=1&w=1920")
Flat.create(title: "Rustic Cabin in the Woods", description: "A quiet getaway surrounded by nature.", address: "Andorra la Vella", user: User.first, image_url:"https://a0.muscache.com/im/pictures/d9ed1a56-5abd-4fdd-9509-7684d1bce98d.jpg")
Flat.create(title: "Modern Penthouse", description: "Luxury penthouse with breathtaking views.", address: "London", user: User.first, image_url:"https://do84cgvgcm805.cloudfront.net/article/364/1200/eaef644ed22c7f36416025a6e6737f12e17541c046d39d85d685198268014a33.jpg")
Booking.create(user: User.first, flat: Flat.first, start_date: Date.today + 5, end_date: Date.today + 10)
Booking.create(user: User.first, flat: Flat.first, start_date: Date.today + 7, end_date: Date.today + 14)
