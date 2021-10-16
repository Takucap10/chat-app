Rails.application.routes.draw do
  root to: "rooms#index"
  devise_for :users
  resources :messages, only:[:get]
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end