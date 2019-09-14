class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def edit
       @user = User.find(params[:id])
  end
  
  def update
  	 @user = User.find(params[:id])

  	 is_admin = params[:is_admin] 
  	if is_admin.to_i == 1
    	@user.is_admin = true
    	@user.save
    else
    	@user.is_admin = false
     	@user.save
    end
    if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    	redirect_to user_path(@user.id), success: "Mise à jour avec succès"
    else
    	render 'edit'
    end
  end

  def show
  	@user = User.find(params[:id])
  	@user = current_user
  end


  def index
  	@products = Product.all
  	@users = User.all
  end
 
end

