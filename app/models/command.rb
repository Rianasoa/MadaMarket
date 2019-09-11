class Command < ApplicationRecord
	belongs_to :customer, optional: true, class_name: 'User'
	has_many :commandProducts
	has_many :products
end
