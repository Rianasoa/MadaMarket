class Cart < ApplicationRecord
	belongs_to :customer, optional: true, class_name: 'User'
	has_many :cartProducts
	has_many :products, through: :cartProducts
end
