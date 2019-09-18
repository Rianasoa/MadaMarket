class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product
  before_action :find_like, only: [:destroy]

  def create
    if already_liked?
      
    else
      @product.likes.create(customer_id: current_user.id)
    end
    redirect_to root_path
  end

  def destroy
    @like.destroy
    redirect_to root_path
  end


  private

  def find_product
    @product = Product.find(params[:product_id])
  end

  def already_liked?
    Like.where(customer_id: current_user.id, product_id:
    params[:product_id]).exists?
  end

  def find_like
    @like = @product.likes.find(params[:id])
 end
end
