Rails.application.routes.draw do
  resources :users, only: [:index, :create, :show, :update, :delete]
  resources :owns, only: [:index, :create, :show, :update, :delete]
  resources :wants, only: [:index, :create, :show, :update, :delete]
  resources :games, only: [:index, :create, :show, :update, :delete]
  resources :messages, only: [:index, :create, :show, :update, :delete]
  resources :reviews, only: [:index, :create, :show, :update, :delete]

  post '/login', to: 'auth#create'
end
