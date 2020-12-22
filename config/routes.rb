Rails.application.routes.draw do
  devise_for :users
  root to: "works#index"
  resources :works
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :login do
    resource :profile
  end
end
