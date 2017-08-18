Rails.application.routes.draw do

  resources :restaurants, except: [:index]
  root controller: :restaurants, action: :index
  resources :orders, only: [:create, :index]
end
