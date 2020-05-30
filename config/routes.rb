Rails.application.routes.draw do
  resources :categories do
    resources :posts
  end
  resources :locations
  resources :comments
  resources :posts
  resources :user_blogs do
    resources :posts
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'

  get 'home/authors'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
