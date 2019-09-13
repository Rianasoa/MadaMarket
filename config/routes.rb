Rails.application.routes.draw do

  resources :carts
  resources :commands

  root to: 'products#index'

  devise_for :users
  resources :users, only: [:show, :edit, :update] do 
    resources :avatars, only: [:create]
  end

  resources :products, only: [:show, :edit, :update] do
    resources :pictures, only: [:create]
  end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
