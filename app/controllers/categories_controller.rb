class CategoriesController < ApplicationController
  def create
  end

  def new
  end
  def show
    @products = Product.all
    if user_signed_in? && current_user.is_admin == true
      redirect_to admin_products_path
    end 
    @category = Category.find(params[:id])
  end

  def index
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
