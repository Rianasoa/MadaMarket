class Product < ApplicationRecord

	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true

	has_many :cartProducts
	has_many :carts, through: :cartProducts
	has_many :commandProducts
	has_many :commands, through: :commandProducts
	has_many :likes
	has_many :customers, through: :likes
	belongs_to :category
	belongs_to :provider, optional: true, class_name: 'User'

	has_one_attached :picture

	def picture_attached?
    	picture.attached?
  	end
end
