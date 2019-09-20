class SuperAdmin::UsersController < ApplicationController
  	before_action :authenticate_user!
	before_action :check_if_super_admin


	def index
		@users = User.where(is_admin: true)
		@provider = User.where(is_admin: nil)	
	end

	def check_if_super_admin
	    if current_user.is_super_admin == false
	      flash[:error] = "Vous n'êtes pas super admin !"
	      redirect_to root_path
	    end
 	end

 	def update
 		@provider = User.find(params[:id])
 		@provider.update(is_admin: true)
 		redirect_to super_admin_users_path
 	end

 	def destroy
 		@user = User.find(params[:id])
 		@user.destroy
 		redirect_to super_admin_users_path
 	end
end
