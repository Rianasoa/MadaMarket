Rails.application.routes.draw do

  resources :carts
  resources :commands
  resources :cities
  root to: 'products#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update] do 
    resources :avatars, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
