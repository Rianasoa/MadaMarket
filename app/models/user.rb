class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  	has_one :cart
  	belongs_to :city
  	has_one_attached :avatar
  	
  	has_many :commands, foreign_key: 'customer_id'
  	has_many :products, foreign_key: 'provider_id'


  after_create :welcome_send
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
end
