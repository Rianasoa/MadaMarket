class UserMailer < ApplicationMailer
	default from: 'madamarket.mg'
	  
	def welcome_email(user)
	    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
	    @user = user 

	    #on définit une variable @url qu'on utilisera dans la view d’e-mail
	    #@url  = 'http://monsite.fr/login' 

	    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
	    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
	end
	def command_email(command)

	    # We get the order
	    @command = command

	    #We get the user
	    @user = @command.customer

	    # We get the user's cart
	    @cart = @user.cart
	    
	    # We get all the items from the cart
	    @cart_products_command = @cart.products

	    #We define the website url
	    @url  = 'http://mada-market.herokuapp.com' 

	    # We send an email to the user for every order
	    mail(to: @user.email, subject: 'Merci pour votre commande!') 

	end
end
