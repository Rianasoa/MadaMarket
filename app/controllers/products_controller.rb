class ProductsController < ApplicationController
  
  def new  
  end

  def show
  @product = Product.find(params[:id])   
  end

  def create
    
  end

  def index
     @products = Product.all
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
