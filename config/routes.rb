Rails.application.routes.draw do
  resources :maintenances
  resources :motors
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "maintenances#index"
end
