Rails.application.routes.draw do
  resources :products
  resources :carts
  resources :categories

  resources :accueil

  resources :commands

  root to: 'products#index'
  resources :charges, only: [:new, :create]
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, only: [:show, :edit, :update] do
    resources :avatars, only: [:create]
  end
    

    # Admin dashboard
  namespace :admin do
    resources :users   
    resources :products do
      resources :pictures
    end
  end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
