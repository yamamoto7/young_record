class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

	def after_sign_up_path_for(resource_or_scope)
	      users_path
  	end


  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name_char, :name_kana, :post, :address, :tell, :email])
  	end
end
