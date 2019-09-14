class Command < ApplicationRecord
	belongs_to :customer, optional: true, class_name: 'User'
	has_many :commandProducts
	has_many :products

	after_create :command_send

	# This method calls the order_email method from user_mailer, passing the order as an argument
	def command_send
		UserMailer.command_email(self).deliver_now
	end

	def is_already_paid
    	paid
  	end
end
