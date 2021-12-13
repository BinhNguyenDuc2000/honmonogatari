Rails.application.routes.draw do
  resources :categories
  get 'category/index'
  get 'home/index'
  resources :books
  resources :chapters
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
