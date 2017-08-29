Rails.application.routes.draw do

  resources :restaurants
  root controller: :restaurants, action: :index
  resources :orders, only: [:create, :show, :destroy]
  resources :charges
end
