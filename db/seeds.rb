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
    User.create!(first_name: Faker::Name.name,last_name: Faker::Name.name,email: Faker::Internet.email,address: Faker::Address.zip_code,
                    password: "123456789")
    end
    puts "User créés"
    
      c1 = Category.create(title: "Artisanal")
      c2 = Category.create(title: "Produits laitiers")
      c3 = Category.create(title: "Fruits et légumes")
      c4 = Category.create(title: "Boisson")

puts "Catégories créées"
 prod = ["http://www.shmadrid.fr/blog/fr/wp-content/uploads/2018/06/bio.jpg",
    "https://img.over-blog-kiwi.com/2/82/53/47/20180530/ob_906b07_gamba.jpg",
    "https://scontent-atl3-1.cdninstagram.com/vp/076455296bd5e469a4955bfb87e3fec5/5DF73416/t51.2885-15/e35/s480x480/31878220_647038518968301_6465523147536859136_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrkeDHV8UGRHN0iHyWr6jXcr1H5Pa4K6-F9ifTpn1M8yyrY8ecVw",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQstPDkbFWIqwoDLY7SC8npgGJlMSOsLegx9h5in1smx7sMq-Hd",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/07/koba-450g-codal-madagascar-500x466.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2vlEnKmp6Uc1Yi3_p_sn2m7BZfDJa09HNXyDnDg2XGF02hLJd",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/07/angivy-codal.jpg",
    "http://lebaobab-market.com/img_produits/120311144920.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGpN_4dzoKg_9w44vD4QifI_bjMrDBBO11t2jf9WB48jkmlU3y",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/07/kabaro-poi-du-cap.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpDhAuOyYwXOXfrlrpkAfRFLzOFBH8Prc6O1g0Ud6n1j3u549M",
    "https://www.racines-sa.com/assets/img-produits/CODBRROK.png",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/06/physalis-sirop-leger-500g.jpg",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/05/piments-condiments.png",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/05/fruits-prepares.png",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/09/epice-taxi-be.png",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/06/taxibe-curcuma-moulu.jpg",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/07/puree-piment-rouge-220g.jpg",
    "https://www.codal-madagascar.com/wp-content/uploads/2016/07/puree-piment-vert-100g.jpg"]
 for i in (0..prod.length-1)
        Product.create!(title: Faker::Restaurant.name,
                description: Faker::Lorem.paragraph,
                price: Faker::Commerce.price,
                image_url:prod[i],
                category_id: Category.all.sample.id,
                provider_id: User.all.sample.id,
                
                )
end
puts "Produits créés"
