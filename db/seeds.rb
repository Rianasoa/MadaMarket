# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	User.destroy_all
	Category.destroy_all
	Product.destroy_all



 5.times do
 	User.create!(first_name: Faker::Name.name,last_name: Faker::Name.name,email: Faker::Internet.email,
                    password: "123456789")
 	end
 	puts "User créés"

 10.times do 
   	  Category.create!(title: Faker::Lorem.word)
 end
puts "Catégories créées"

 prod = ["https://cdn.pixabay.com/photo/2017/04/04/17/41/fruits-2202419_960_720.jpg","https://image.shutterstock.com/image-photo/packing-frozen-shrimp-buyers-hand-260nw-1060777829.jpg","https://scontent-atl3-1.cdninstagram.com/vp/076455296bd5e469a4955bfb87e3fec5/5DF73416/t51.2885-15/e35/s480x480/31878220_647038518968301_6465523147536859136_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com",
 	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrkeDHV8UGRHN0iHyWr6jXcr1H5Pa4K6-F9ifTpn1M8yyrY8ecVw"]
 for i in (0..prod.length-1)
        Product.create!(title: Faker::Lorem.word,
				description: Faker::Lorem.paragraph,
				price: Faker::Commerce.price,
                image_url:prod[i],
                category_id: Category.all.sample.id,
                provider_id: User.all.sample.id,
                
                )

end
puts "Produits créés"
