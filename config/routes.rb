Rails.application.routes.draw do
  devise_for :users
  root to: "works#index"
  resources :works, only: [:index, :show]
  #   get 'higher' => 'works#move_higher', as: 'higher', on: :member
  # end
  resources :directors, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :login do
    resources :works, except: [:index, :show]
    resources :directors, except: [:index, :show]
    resource :profile
  end
end
