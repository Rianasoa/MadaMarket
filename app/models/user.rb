class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  	has_one :cart
  	
  	has_many :commands, foreign_key: 'customer_id'
  	has_many :products, foreign_key: 'provider_id'
end
