class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?



   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name_char,
                               :name_kana,
                               :post,
                               :address,
                               :tell,
                               :address_prefecture,
                               :address_city,
                               :address_building])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name_char,
                               :name_kana,
                               :post,
                               :address,
                               :tell,
                               :address_prefecture,
                               :address_city,
                               :address_building])
  end
end
