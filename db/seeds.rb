# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Reservation.destroy_all
Unicorn.destroy_all
User.destroy_all


User.create!(first_name: "Sebastien", last_name: "Fournier", email: "seb@email.com", password: "secret")
owner = User.create!(first_name: "Joe", last_name: "Roberts", email: "joe@email.com", password: "secret", owner: true)

joe_photo = URI.open("https://i.ibb.co/55VsWHq/944d69fc-b46e-4f8b-813a-ebd1726a8a6a.jpg")
joe = Unicorn.new(name: "joe", gender: "male", age: 12, color: "gold", price: "1_000_000", variety: "Fat", team_member: true, user: owner )
joe.photo.attach(io: joe_photo, filename: "joe_unicorn.jpg", content_type: "image/jpg")
joe.save

priscilla_photo = URI.open("https://i.ibb.co/TMr0gM2/410150c5-649a-4aed-8c23-10e8612b7e69.jpg")
priscilla = Unicorn.new(name: "priscilla", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "business", team_member: true, user: owner)
priscilla.photo.attach(io: priscilla_photo, filename: "priscilla.jpg", content_type: "image/jpg")
priscilla.save

daphne_photo = URI.open("https://i.ibb.co/hV9SCmM/DALL-E-2023-08-24-15-04-48-A-photo-of-a-golden-barbie-unicorn-figurine.png")
daphne = Unicorn.new(name: "daphne", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "barbie", team_member: true, user: owner)
daphne.photo.attach(io: daphne_photo, filename: "daphne.png", content_type: "image/png")
daphne.save

seb_photo = URI.open("https://i.ibb.co/TgZb48T/DALL-E-2023-08-24-15-23-19-A-photograph-of-a-gold-unicorn-lifting-weights.png")
seb = Unicorn.new(name: "seb", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "business", team_member: true, user: owner)
seb.photo.attach(io: seb_photo, filename: "seb.png", content_type: "image/png")
seb.save

julia_marie_photo = URI.open("https://i.ibb.co/86V3drk/pegasus-pink.png")
julia_marie = Unicorn.new(name: "julia-marie", gender: "female", age: 8, color: "pink", price: 2500, variety: "Haunted", user: owner)
julia_marie.photo.attach(io: julia_marie_photo, filename: "juliamarie.png", content_type: "image/png")
julia_marie.save
