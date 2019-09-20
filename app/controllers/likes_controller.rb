class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    if already_liked?
      
    else
      @product = Product.find(params[:product_id])
      @product.likes.create(customer_id: current_user.id)
    end
    redirect_to root_path
  end

  def destroy
    @product = Product.find(params[:product_id])
    @like = @product.likes.find(params[:id])
    @like.destroy
    redirect_to root_path
  end

  private

  def already_liked?
    Like.where(customer_id: current_user.id, product_id:
    params[:product_id]).exists?
  end

end
