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

joe_photo = URI.open("https://th.bing.com/th/id/OIG.1DiMHek3_Fm4UCNTmxCe?pid=ImgGn")
joe = Unicorn.new(name: "joe", gender: "male", age: 12, color: "gold", price: "1_000_000", variety: "Fat", team_member: true, user: owner )
joe.photo.attach(io: joe_photo, filename: "joe_unicorn.jpg", content_type: "image/jpg")
joe.save

priscilla_photo = URI.open("https://th.bing.com/th/id/OIG.Tear3NO9hRJHtD.Vu7Xh?pid=ImgGn")
priscilla = Unicorn.new(name: "priscilla", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "Business", team_member: true, user: owner)
priscilla.photo.attach(io: priscilla_photo, filename: "priscilla.jpg", content_type: "image/jpg")
priscilla.save

daphne_photo = URI.open("https://th.bing.com/th/id/OIG.uoxrChBPPVM9AvFP_xzH?pid=ImgGn")
daphne = Unicorn.new(name: "daphne", gender: "female", age: 1, color: "gold", price: "1_000_000", variety: "Barbie", team_member: true, user: owner)
daphne.photo.attach(io: daphne_photo, filename: "daphne.png", content_type: "image/png")
daphne.save

seb_photo = URI.open("https://th.bing.com/th/id/OIG.3dDz0y0Qv_itoLgur0N0?pid=ImgGn")
seb = Unicorn.new(name: "seb", gender: "male", age: 11, color: "gold", price: "1_000_000", variety: "Bulky", team_member: true, user: owner)
seb.photo.attach(io: seb_photo, filename: "seb.png", content_type: "image/jpg")
seb.save

fred_photo = URI.open("https://th.bing.com/th/id/OIG.3VRzSgpCtXBvjW.05yQN?pid=ImgGn")
fred = Unicorn.new(name: "fred", gender: "male", age: 1, color: "white", price: "500_000", variety: "Murder", team_member: false, user: owner)
fred.photo.attach(io: fred_photo, filename: "fred.png", content_type: "image/jpg")
fred.save

marcela_photo = URI.open("https://th.bing.com/th/id/OIG.Ib8Udc.5FfCbKRDL.Rz_?pid=ImgGn")
marcela = Unicorn.new(name: "marcela", gender: "female", age: 2, color: "white", price: "250_000", variety: "Cute", team_member: false, user: owner)
marcela.photo.attach(io: marcela_photo, filename: "marcela.png", content_type: "image/jpg")
marcela.save

grace_photo = URI.open("https://th.bing.com/th/id/OIG.g99oemtIGtj17P7RyC8H?pid=ImgGn")
grace = Unicorn.new(name: "grace", gender: "female", age: 3, color: "white", price: "300_000", variety: "Haunted", team_member: false, user: owner)
grace.photo.attach(io: grace_photo, filename: "grace.png", content_type: "image/jpg")
grace.save

audrey_photo = URI.open("https://th.bing.com/th/id/OIG.Ys2fSCg4lA8SF.AAQDNs?pid=ImgGn")
audrey = Unicorn.new(name: "audrey", gender: "female", age: 4, color: "pink", price: "20_000", variety: "Cute", team_member: false, user: owner)
audrey.photo.attach(io: audrey_photo, filename: "audrey.png", content_type: "image/jpg")
audrey.save

david_photo = URI.open("https://th.bing.com/th/id/OIG.Ry9IM5IPtX30dGHwpNql?pid=ImgGn")
david = Unicorn.new(name: "david", gender: "female", age: 5, color: "white", price: "10_000", variety: "Murder", team_member: false, user: owner)
david.photo.attach(io: david_photo, filename: "david.png", content_type: "image/jpg")
david.save

sergio_photo = URI.open("https://th.bing.com/th/id/OIG.OBV21STN_e_tiWqVnrrp?pid=ImgGn")
sergio = Unicorn.new(name: "sergio", gender: "male", age: 6, color: "green", price: "50_000", variety: "Cute", team_member: false, user: owner)
sergio.photo.attach(io: sergio_photo, filename: "sergio.png", content_type: "image/jpg")
sergio.save

justin_photo = URI.open("https://th.bing.com/th/id/OIG.7nMotTxOACoY7h9p.wAW?pid=ImgGn")
justin = Unicorn.new(name: "justin", gender: "male", age: 7, color: "white", price: "70_000", variety: "Haunted", team_member: false, user: owner)
justin.photo.attach(io: justin_photo, filename: "justin.png", content_type: "image/jpg")
justin.save

grant_photo = URI.open("https://th.bing.com/th/id/OIG._Qi221igjDMGxTJhyJZf?pid=ImgGn")
grant = Unicorn.new(name: "grant", gender: "male", age: 8, color: "pink", price: "15_000", variety: "Barbie", team_member: false, user: owner)
grant.photo.attach(io: grant_photo, filename: "grant.png", content_type: "image/jpg")
grant.save

kitty_photo = URI.open("https://th.bing.com/th/id/OIG.hw2yYSazUW2gwQ24VCIW?pid=ImgGn")
kitty = Unicorn.new(name: "kitty", gender: "female", age: 9, color: "pink", price: "15_000", variety: "Haunted", team_member: false, user: owner)
kitty.photo.attach(io: kitty_photo, filename: "kitty.png", content_type: "image/jpg")
kitty.save

marcelo_photo = URI.open("https://th.bing.com/th/id/OIG.Fb9QoL95Cez4gEecAgvI?pid=ImgGn")
marcelo = Unicorn.new(name: "marcelo", gender: "male", age: 10, color: "purple", price: "15_000", variety: "Bulky", team_member: false, user: owner)
marcelo.photo.attach(io: marcelo_photo, filename: "marcelo.png", content_type: "image/jpg")
marcelo.save

mg_photo = URI.open("https://www.bing.com/images/create/photo-of-a-business-unicorn-with-color-pink/64e9069087ce4e60885980a0735da276?id=RrizaTTMEwRnGAM1c4p%2fiQ%3d%3d&view=detailv2&idpp=genimg&FORM=GCRIDP&ajaxhist=0&ajaxserp=0")
mg = Unicorn.new(name: "mg", gender: "female", age: 10, color: "pink", price: "15_000", variety: "Business", team_member: false, user: owner)
mg.photo.attach(io: mg_photo, filename: "mg.png", content_type: "image/jpg")
mg.save
