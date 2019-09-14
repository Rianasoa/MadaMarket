class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]
  

  def edit
       @user = current_user
  end

  def update
  	 @user = current_user

  	 is_admin = params[:is_admin] 
  	if is_admin.to_i == 1
    	@user.is_admin = true
    	@user.save
    else
    	@user.is_admin = false
     	@user.save
    end
    if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], avatar: params[:avatar])
    	redirect_to user_path(@user.id), success: "Mise à jour avec succès"
    else
    	render 'edit'
    end
  end
  def index
  	@products = Product.all
  	@users = User.all
  end

 
end

