Rails.application.routes.draw do
 
  
  resources :products
  resources :carts
  resources :commands
 root to: 'products#index'
  devise_for :users
  resources :users do
  resources :avatars, only: [:create]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
