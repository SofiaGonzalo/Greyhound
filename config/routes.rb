Rails.application.routes.draw do

  resources :messages, only: [:new, :create]
  get 'messages/new'
  get 'messages/create'
  get 'messages/msg_params'
  resources :products
  devise_for :users
  root "home#index"

  get "/prueba", to: "home#prueba"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
