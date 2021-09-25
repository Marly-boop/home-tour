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
Category.create([
    {name: 'Van house'},#, description: 'All we need in a van your house can go with you wherever you want!'},
    {name: 'Suspend house'},#, description: 'You will see all the magic world with this panoramic view!'},
    {name: 'Forest house'}#, description: 'The best way to be closer than ever with the nature!'}
])

