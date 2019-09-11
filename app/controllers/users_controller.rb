class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def edit
       @user = User.find(params[:id])
  end
  
  def update
  	 @user = User.find(params[:id])
    if @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    	redirect_to user_path(@user.id), success: "Mis à jour avec succes"
    else
    	render 'edit'
    end
  end


  def show
  	@user = User.find(params[:id])
  	@user = current_user
  end
end
