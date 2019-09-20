class AccueilController < ApplicationController
  def index
  	@products = Product.all
  	@provider = User.where(is_admin: true)
  end

  def show
  	@provider = User.find(params[:id])
  end
end
