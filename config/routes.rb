Rails.application.routes.draw do
 
  get 'likes/create'
  get 'likes/destroy'
  resources :products
  resources :carts
  resources :commands
 root to: 'accueil#index'
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
