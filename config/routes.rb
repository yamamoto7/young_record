Rails.application.routes.draw do

  root to: 'items#top'
  resources :items, only: [:index, :show]
	
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  resource :admins, only: [:index]
  namespace :admins do
    resources :genre, only: [:index, :show]
    resources :histories, only: [:index, :show]
    resources :items, only: [:index, :new, :edit, :create, :update]
    resources :users, only: [:index, :show]
    get 'items/:id/edit_cds' => 'items#edit_cds', as: 'edit_cds'
  end

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resource :users, only: [:index, :show]
  namespace :users do
    resources :carts, only: [:index]
    get 'carts/buy' => 'carts#buy'
    get 'carts/thanks' => 'carts#thanks'
    resources :histories, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
