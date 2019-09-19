class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  	has_one :cart, foreign_key: 'customer_id'
  	belongs_to :city, optional: true

  	has_one_attached :avatar
  	
  	has_many :commands, foreign_key: 'customer_id'
  	has_many :products, foreign_key: 'provider_id'



  after_create :add_cart

  def add_cart
    Cart.create(customer_id: self.id)
  end
  
end
