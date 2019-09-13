class Cart < ApplicationRecord
	belongs_to :customer, optional: true, class_name: 'User'
	has_many :cartProducts
	has_many :products, through: :cartProducts
	def total_price
		#We set a counter at 0
		total = 0
		#We iterate through the items in the cart
		self.products.each do |product|
			#We add the price item at the counter at each iteration of the loop,
			#to obtain the total price
			total+= product.price
		end

		return total
	end
end
