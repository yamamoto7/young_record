class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [ :name_char, :name_kana, :email, :post, :tell, :address])
      devise_parameter_sanitizer.permit(:account_update, keys: [ :name_char, :name_kana, :email, :post, :tell, :address　])
      devise_parameter_sanitizer.permit(:sign_in, keys: [ :email ])
    end
end
