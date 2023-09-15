# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # get 'inventory/index'
  # get 'home/index'
  resources :inventories
  resources :foods, only: %i[create new destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inventories#index"
end
