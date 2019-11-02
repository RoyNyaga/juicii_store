Rails.application.routes.draw do
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"
end
