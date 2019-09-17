class AccueilController < ApplicationController
  def index
  	@products = Product.all
  	@provider = User.find(rand(User.first.id)..(User.last.id))
  end

  def show
  	@provider = User.find(params[:id])
  end
end
