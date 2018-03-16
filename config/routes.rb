Rails.application.routes.draw do
  get 'likes/create'

  devise_for :users

  resources :posts

  resources :comments

  resources :likes, only: [:create]
    
  root "posts#index"

end
