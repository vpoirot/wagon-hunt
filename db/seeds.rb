# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create!(name: "Gogol", url:"http://www.gogol.com", tagline:"Best search")
Product.create!(name: "Vincent", url:"http://www.vincent.com", tagline:"Best man")
Product.create!(name: "Marion", url:"http://www.marion.com", tagline:"Best woman")
