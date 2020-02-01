Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :reviews
  resources :line_items
  resources :carts
  get 'products/index'
  get 'products/show'
  devise_for :users, controllers: {
  	registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks'
  }


  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :products,       only: [:index, :show]
  resources :payments
  resources :search_results, only: [:index]
  resources :users

end
