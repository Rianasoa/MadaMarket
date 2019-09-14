class Cart < ApplicationRecord
	belongs_to :customer, optional: true, class_name: 'User'
	has_many :cartProducts
	has_many :products, through: :cartProducts


	def total_price
    # Calculate total price of products in cart
    	products.sum(:price)
  	end
end
