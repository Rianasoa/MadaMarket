Rails.application.routes.draw do
  get 'commands/create'
  get 'commands/new'
  get 'commands/index'
  get 'commands/update'
  get 'commands/edit'
  get 'commands/destroy'
  get 'carts/create'
  get 'carts/new'
  get 'carts/index'
  get 'carts/update'
  get 'carts/edit'
  get 'carts/destroy'
  get 'categories/create'
  get 'categories/new'
  get 'categories/index'
  get 'categories/update'
  get 'categories/edit'
  get 'categories/destroy'
  get 'products/create'
  get 'products/new'
  get 'products/index'
  get 'products/update'
  get 'products/edit'
  get 'products/destroy'
 root to: 'accueil#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
