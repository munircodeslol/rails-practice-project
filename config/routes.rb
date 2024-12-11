Rails.application.routes.draw do
  # get "user/new"
  # get "user/create"
  # get "user/show"
  resources :user
  get "sessions/create"

  root "user#index"

  get "login", to: "sessions#login"
  post "login",  to: "sessions#create"

  get "logout", to: "sessions#destroy"
  delete "logout", to: "sessions#destroy"
end
