class AccueilController < ApplicationController
  def index
  	@products = Product.all
  	@provider = User.find(15)
  end

  def show
  	@provider = User.find(params[:id])
  end
end
