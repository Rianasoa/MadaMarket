class AccueilController < ApplicationController
	
	#requête pour l'affichage de tous les produits sur la page de magasin	
  def index
  	@products = Product.all
  	@provider = User.where(is_admin: true)
  end

  #requête pour l'affichage des produits de chaque fournisseur
  def show
  	@provider = User.find(params[:id])
  end
end
