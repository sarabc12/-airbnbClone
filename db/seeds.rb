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
User.create(first_name: "Niccolò", last_name: "Burchi", email: "burchi@burchi.it", password:"burchi@burchi.it")
Flat.create(title: "Cozy Studio in Downtown", description: "A beautiful and modern studio in the heart of the city.", address: "London", user: User.first, image_url: "https://imagescdn.openrent.co.uk/listings/2096021/o_1i5o16k5njhh19io1qbk11pta4j2.JPG", price: 345)
Flat.create(title: "Beachfront Apartment", description: "Wake up to the sound of waves in this stunning beach apartment.", address: "Bali", user: User.first, image_url: "https://images.homhero.com.au/960x600/fa47950a-e23a-42a9-96a8-f636a69822ff/listing/97/dbd01779-d45b-215a-ae8a-5bdb943a6178.jpg", price: 445)
Flat.create(title: "Spacious Loft", description: "A stylish and spacious loft with a great city view.", address: "New York", user: User.first, image_url:"https://cdn1.epicgames.com/ue/product/Screenshot/picture%202-1920x1080-ec5f7810596b9d96006b0b5b1247c2be.png?resize=1&w=1920", price: 254)
Flat.create(title: "Rustic Cabin in the Woods", description: "A quiet getaway surrounded by nature.", address: "Andorra la Vella", user: User.first, image_url:"https://a0.muscache.com/im/pictures/d9ed1a56-5abd-4fdd-9509-7684d1bce98d.jpg", price: 378)
Flat.create(title: "Modern Penthouse", description: "Luxury penthouse with breathtaking views.", address: "London", user: User.first, image_url:"https://do84cgvgcm805.cloudfront.net/article/364/1200/eaef644ed22c7f36416025a6e6737f12e17541c046d39d85d685198268014a33.jpg", price: 467)
Flat.create(
  title: "Skyline Retreat",
  description: "Modern penthouse with panoramic city views.",
  address: "Paris",
  user: User.last,
  image_url: "https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg",
  price: 780
)

Flat.create(
  title: "Urban Oasis",
  description: "Elegant apartment with refined interiors and a private terrace.",
  address: "Berlin",
  user: User.first,
  image_url: "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2",
  price: 620
)

Flat.create(
  title: "Notting Hill Hideaway",
  description: "Luxury retreat in one of London's most exclusive neighborhoods.",
  address: "Notting Hill, London",
  user: User.last,
  image_url: "https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg",
  price: 540
)


Flat.create(
  title: "Canal View Apartment",
  description: "Modern apartment with canal views and close to the city center.",
  address: "Venice",
  user: User.last,
  image_url: "https://images.pexels.com/photos/259950/pexels-photo-259950.jpeg",
  price: 510
)

Flat.create(
  title: "Victorian Elegance",
  description: "Apartment in a historic building with classic decor.",
  address: "Milan",
  user: User.last,
  image_url: "https://images.pexels.com/photos/271743/pexels-photo-271743.jpeg",
  price: 700
)

Flat.create(
  title: "The Garden Flat",
  description: "Apartment with direct access to a private garden.",
  address: "London",
  user: User.first,
  image_url: "https://images.unsplash.com/photo-1580587771525-78b9dba3b914",
  price: 520
)

Flat.create(
  title: "Penthouse Panorama",
  description: "Penthouse with 360° views over the London skyline.",
  address: "South Bank, London",
  user: User.last,
  image_url: "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg",
  price: 850
)

Flat.create(
  title: "Soho Studio",
  description: "Modern studio in the heart of London's nightlife.",
  address: "Soho, London",
  user: User.first,
  image_url: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
  price: 440
)

Booking.create(user: User.first, flat: Flat.first, start_date: Date.today + 5, end_date: Date.today + 10)
Booking.create(user: User.first, flat: Flat.first, start_date: Date.today + 7, end_date: Date.today + 14)
