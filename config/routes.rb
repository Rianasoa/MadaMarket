Rails.application.routes.draw do

  resources :products, only: [:show, :edit, :update] do
    resources :pictures, only: [:create]
  end
  resources :carts 
  resources :commands
  resources :charges
  root to: 'products#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update] do 
    resources :avatars, only: [:create]
  end

    # Admin dashboard
  namespace :admin do
    resources :users, only: [:index]    
    resources :products, only: [:index, :show, :edit, :update, :destroy, :new, :create] do
      resources :pictures, only: [:create]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
