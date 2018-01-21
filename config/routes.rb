Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new,:create,:destroy]
  resources :users
end
