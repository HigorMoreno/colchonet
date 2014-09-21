Rails.application.routes.draw do
  resources :rooms do
  	resources :reviews, only: [:create, :udpate], module: :rooms
  end
  resources :users

  resource :confirmation, only: [:show]
  resource :user_sessions, only: [:create, :new, :destroy]

  root 'home#index'
end
