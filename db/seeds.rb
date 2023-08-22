# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Unicorn.destroy_all
User.destroy.all

gender = ["male", "female"]
age = (1..12).to_a
color = ["blue", "pink", "orange", "gray", "purple", "silver", "bronze"]
price = [1000, 50, 100_000, 25, 5000, 500, 10_000]
variety = ["bulky", "Fat", "Haunted", "Chubby", "Baby", "Cute", "Barbie"]

owner = User.create!(first_name: "Joe", last_name: "Roberts", email: "joe@email.com", password: "secret", owner: true)

Unicorn.create!(name: "joe", gender: "male", age: 12, color: "gold", price: "1_000_000", variety: "fat", user: owner)
Unicorn.create!(name: "priscilla", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "business", user: owner)
Unicorn.create!(name: "daphne", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "barbie", user: owner)
Unicorn.create!(name: "sebastien", gender: "male", age: 7, color: "gold", price: "1_000_000", variety: "bulky", user: owner)

Unicorn.create!(name: "fred", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "justin", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "marcelo", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "audrey", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "sebastien", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "marcela", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "grant", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "grace", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "david", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "sergio", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
Unicorn.create!(name: "kitty", gender: gender.sample, age: age.sample, color: color.sample, price: price.sample, variety: variety.sample, user: owner)
