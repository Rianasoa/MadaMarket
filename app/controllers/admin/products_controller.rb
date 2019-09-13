class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :check_if_admin

  def index
    @products = Product.where(provider_id: current_user.id)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(title: params[:title], description: params[:description], price: params[:price], image_url: params[:image_url], category_id: params[:category_id],provider_id: current_user.id)
    redirect_to admin_products_path
    flash[:success] = "Produit créé"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(title: params[:title], description: params[:description], price: params[:price], picture: params[:picture], provider_id: current_user.id)
      flash[:success] = "Produit modifié!"
      redirect_to admin_product_path
    else
      flash[:alert] = "Erreur existe"
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:success] = "Produit supprimé"
      redirect_to admin_products_path
    else
      flash[:alert] = "Erreur existe"
      redirect_to admin_productspath
    end
  end

  def check_if_admin
    if current_user.is_admin == false
      flash[:error] = "Vous n'êtes pas un administrateur !"
      redirect_to root_path
    end
  end
end
