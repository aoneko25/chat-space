Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :groups
  resources :users, only: [:edit, :update]
end
