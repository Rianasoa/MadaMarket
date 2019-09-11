class Product < ApplicationRecord

	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true

	has_many :cartProducts
	has_many :carts, through: :cartProducts
	has_many :commandProducts
	has_many :commands, through: :commandProducts
	belongs_to :category
	belongs_to :provider, optional: true, class_name: 'User'

end
