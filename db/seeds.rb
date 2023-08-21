# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Unicorn.destroy.all

gender = ["male", "female"]
age = (1..12).to_a
color = ["blue", "pink", "orange", "gray", "purple", "silver", "gold"]
price = [1000, 50, 1_000_000, 25, 5000, 500, 10_000]
type = ["bulky", "Fat", "Hunted", "Chobby", "Baby", "Cute", "Barbie"]

Unicorn.create!(name: "justin", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "marcelo", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "audrey", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "sebastien", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "marcela", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "grant", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "grace", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "david", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "sergio", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "kitty", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "daphne", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
Unicorn.create!(name: "priscillia", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, type: type.sample)
