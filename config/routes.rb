Rails.application.routes.draw do
  get '/about', to: "static_pages#about"
  get '/services', to: "static_pages#services"
  get '/contact', to: "static_pages#contact"
  get '/promotion', to: "static_pages#promotion"
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
  resources :messages, only: [:create]

end
