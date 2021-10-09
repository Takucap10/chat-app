Rails.application.routes.draw do
  root to: "messages#index"
  devise_for :users
  get 'messages/index'
end