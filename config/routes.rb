Rails.application.routes.draw do
  get "home/index" => "home#index"
  resources :works
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
