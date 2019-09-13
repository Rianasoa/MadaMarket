class Admin::UsersController < ApplicationController
 	before_action :authenticate_user!
	before_action :check_if_admin
	
	def index
		@commands = Command.all
		@users = @commands.provider_id
	end

	 def check_if_admin
    if current_user.is_admin == false
      flash[:error] = "Vous n'êtes pas admin !"
      redirect_to root_path
    end
  end
end
