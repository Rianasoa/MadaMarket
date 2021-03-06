class ApplicationController < ActionController::Base
	add_flash_types :success, :danger
	before_action :configure_devise_parameters, if: :devise_controller?

def configure_devise_parameters

  devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :address, :password, :password_confirmation)}
  devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :address, :password, :password_confirmation, :avatar)}

end

end
