# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	City.destroy_all
	User.destroy_all
	Category.destroy_all
	Product.destroy_all

10.times do
	City.create!(name: Faker::Address.city,
				zip_code: Faker::Address.zip_code)
end
puts "Villes créées"

 5.times do
 	User.create!(first_name: Faker::Name.name,last_name: Faker::Name.name,email: Faker::Internet.email,
                    password: "123456789", city_id: City.all.sample.id)
 	end
 	puts "User créés"

 10.times do 
   	  Category.create!(title: Faker::Lorem.words)
 end
puts "Catégories créées"

 prod = ["http://www.shmadrid.fr/blog/fr/wp-content/uploads/2018/06/bio.jpg","https://img.over-blog-kiwi.com/2/82/53/47/20180530/ob_906b07_gamba.jpg","https://scontent-atl3-1.cdninstagram.com/vp/076455296bd5e469a4955bfb87e3fec5/5DF73416/t51.2885-15/e35/s480x480/31878220_647038518968301_6465523147536859136_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com",
 	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrkeDHV8UGRHN0iHyWr6jXcr1H5Pa4K6-F9ifTpn1M8yyrY8ecVw"]
 for i in (0..prod.length-1)
        Product.create!(title: Faker::Lorem.words,
				description: Faker::Lorem.paragraph,
				price: Faker::Commerce.price,
                image_url:prod[i],
                category_id: Category.all.sample.id,
                provider_id: User.all.sample.id,
                
                )

end
puts "Produits créés"
