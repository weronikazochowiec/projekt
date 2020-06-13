Rails.application.routes.draw do


  resources :comments

  get "search" => 'posts#search'
  resources :posts do
    resources :comments
  end

  resources :user_blogs do
    resources :posts do
      resources :comments
    end
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users do
    resources :user_blogs
  end
  root 'posts#index'

  get 'home/authors'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
