require 'sidekiq/web'

Rails.application.routes.draw do
  resources :categories
  resources :books
  resources :customers
  resources :order_items
  resources :orders
  resources :shipment_details
  resources :shipments
  resources :staffs
  resources :suppliers

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
