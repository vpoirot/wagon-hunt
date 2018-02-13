# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all
vincent = User.create!(email: 'vincent.poirot@gmail.com', password: 'testtest')
marion = User.create!(email: 'marion.poirot@gmail.com', password: 'testtest')
toto = User.create!(email: 'toto@gmail.com', password: 'totototo')

Product.create!(user: vincent, name: "Gogol", url:"http://www.gogol.com", tagline:"Best search", category:"Tech")
Product.create!(user: marion, name: "Vincent", url:"http://www.vincent.com", tagline:"Best man",category:"Education")
Product.create!(user: toto, name: "Marion", url:"http://www.marion.com", tagline:"Best woman",category:"Lifestyle")
