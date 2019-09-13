class ProductsController < ApplicationController

  def update
 end
  def index

     @products = Product.all
  end

  def new
   
  end

  def create
    
  end
  def show
    @product = Product.find(params[:id])
    if user_signed_in?
      @cart = current_user.cart
    end
  end

end
