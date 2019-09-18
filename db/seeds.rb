# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all


      c1 = Category.create!(title: "Artisanal")
      c2 = Category.create!(title: "Boisson")
      c3 = Category.create!(title: "Produits laitiers")
      c4 = Category.create!(title: "Charcuterie")
      c5 = Category.create!(title: "Fruits et Légumes")
      c6 = Category.create!(title: "Produits alimentaires")
      c7 = Category.create!(title: "Produits agricoles")


puts "Catégories créées"





