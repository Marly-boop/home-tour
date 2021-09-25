# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
p "Emptying data..."
House.destroy_all
Category.destroy_all
p "Creating categories..."
first = Category.create({name: 'Van house'})#, description: 'All we need in a van your house can go with you wherever you want!'},
second = Category.create({name: 'Suspend house'})#, description: 'You will see all the magic world with this panoramic view!'},
last = Category.create({name: 'Forest house'})#, description: 'The best way to be closer than ever with the nature!'}

first.picture.attach(io: File.open("app/assets/images/van-house.jpg"), filename: "img.jpg")
second.picture.attach(io: File.open("app/assets/images/suspend-house.jpg"), filename: "img.jpg")
last.picture.attach(io: File.open("app/assets/images/tiny-house.jpg"), filename: "img.jpg")

first.save!
second.save!
last.save!