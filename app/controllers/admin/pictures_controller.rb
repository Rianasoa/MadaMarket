class Admin::PicturesController < ApplicationController
  before_action :check_if_admin
  def create
  	@product = Product.find(params[:product_id])
    @product.picture.attach(params[:picture])
    redirect_to admin_products_path
  end

  def new
  	@product = User.find(params[:product_id])
  end

  private 
  def check_if_admin
      unless user_signed_in? && current_user.is_admin == true
        flash[:danger] = "Vous n'êtes pas accès sur cette page"
        redirect_to root_path
      end
  end
end
