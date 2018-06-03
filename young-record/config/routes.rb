Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "new" => "items#new"
  # post "items" => "items#create"
  # get "items" => "items#index"
    resources :items

end
