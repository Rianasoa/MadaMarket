# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Category.destroy_all
      c1 = Category.create!(title: "Artisanats")
      c2 = Category.create!(title: "Boissons")
      c3 = Category.create!(title: "Conserves")
      c4 = Category.create!(title: "Fruits de mer")
      c5 = Category.create!(title: "Graines")
      c6 = Category.create!(title: "Tsakitsaky")
      c7 = Category.create!(title: "Comestibles")


puts "Catégories créées"


