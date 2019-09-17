class AccueilController < ApplicationController
  def index
  	@products = Product.all
  end
end
