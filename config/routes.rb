Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show, :update, :destroy]
  resources :owns, only: [:index, :create, :show, :update, :destroy]
  resources :wants, only: [:index, :create, :show, :update, :destroy]
  resources :games, only: [:index, :create, :show, :update, :destroy]
  resources :messages, only: [:index, :create, :show, :update, :destroy]
  resources :reviews, only: [:index, :create, :show, :update, :destroy]

  post '/login', to: 'auth#create'
  get '/profile_init', to: 'application#profile_init'
end
