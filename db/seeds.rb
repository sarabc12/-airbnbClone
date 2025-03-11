# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email: "mariodominic@gmail.com", password:"123456")
User.create(email: "adamsmith@gmail.com", password:"654321")

Flat.create(title: "Cozy Studio in Downtown", description: "A beautiful and modern studio in the heart of the city.", address: "London", user: User.first)
Flat.create(title: "Beachfront Apartment", description: "Wake up to the sound of waves in this stunning beach apartment.", address: "Bali", user: User.first)
Flat.create(title: "Spacious Loft", description: "A stylish and spacious loft with a great city view.", address: "New York", user: User.first)
Flat.create(title: "Rustic Cabin in the Woods", description: "A quiet getaway surrounded by nature.", address: "Andorra la Vella", user: User.first)
Flat.create(title: "Modern Penthouse", description: "Luxury penthouse with breathtaking views.", address: "London", user: User.first)

Booking.create(user: User.first, flat: Flat.first, start_date: Date.today + 5, end_date: Date.today + 10, status: true)
Booking.create(user: User.first, flat: Flat.first, start_date: Date.today + 7, end_date: Date.today + 14, status: false)
