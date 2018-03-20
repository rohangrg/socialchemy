Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/show'
  patch 'users/update' => 'users#update' , as: 'user' 

  devise_for :users

  resources :posts

  resources :comments

  resources :likes, only: [:create]
    
  root "posts#index"

end
