class Like < ApplicationRecord
	belongs_to :customer, optional: true, class_name: 'User'
	belongs_to :product, optional: true
end
