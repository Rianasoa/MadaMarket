class SuperAdmin::ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_super_admin
  def index
    @products = Product.where(validation: false)
  end

  def update
  	@product = Product.find(params[:id])
 	@product.update(validation: true)
 	redirect_to super_admin_products_path
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to super_admin_products_path
  end

  private
  def check_if_super_admin
    if current_user.is_super_admin == false
      flash[:error] = "Vous n'êtes pas un administrateur"
      redirect_to root_path
    
    end
  end
end
