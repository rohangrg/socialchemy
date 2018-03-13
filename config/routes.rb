Rails.application.routes.draw do
  get 'likes/create'

  devise_for :users

  resources :posts, only: [:create]

  resources :comments, only: [:create]

  resources :likes, only: [:create]
    
  root "posts#index"

end
