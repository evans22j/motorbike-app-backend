# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Evans", admin: true)

Motorbike.create!(name: "Honda", image: 'https://pixabay.com/photos/motorbike-racing-motorcycle-race-438464/', description: "soo fast mate", price: 245.50, user_id: 1)
Motorbike.create!(name: "Hyndai", image: 'https://pixabay.com/photos/superbike-motorsport-fast-speed-930715/', description: "soo fatestii mate", price: 500.50, user_id: 1)
Reservation.create!(data: '21/02/2022', city: 'Lusaka', user_id: 1, motorbike_id: 2)
