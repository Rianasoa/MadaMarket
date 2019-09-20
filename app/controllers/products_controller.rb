class ProductsController < ApplicationController

  def index
    @products = Product.where(validation: true)
    @q = Product.search(params[:q])
    @products = @q.result

    if user_signed_in? && current_user.is_admin == true
    	redirect_to admin_products_path
    end	
  end
  
  def show
    @product = Product.find(params[:id])
    if user_signed_in?
      @cart = current_user.cart
    end
  end


end
