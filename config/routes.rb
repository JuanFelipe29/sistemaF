Rails.application.routes.draw do
  get 'quarterings/index'
  resources :pieces
  resources :supplies
  resources :channels
  resources :piece_names
  resources :families
  resources :suppliers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
