Rails.application.routes.draw do
  root to: 'peoples#index'
  devise_for :users
  resources :people
end
