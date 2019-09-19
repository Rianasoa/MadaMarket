class AdminMailer < ApplicationMailer
	default from: 'madamarket.mg'
	def command_email(command)

    
    @command = command

    
    @command_user = @command.customer

    @admins = User.where(is_admin: true)

    
    @cart = @command_user.cart
    
    
    @cart_products_ordered = @cart.products

    @admins.each do |admin|
   	 mail(to: admin.email, subject: 'Une nouvelle commande a été faite !') 
 		end
  end
end
