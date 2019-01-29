Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'geocoder/findaddress'

  get 'pages/index'
  root 'pages#index'

  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }
   resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
