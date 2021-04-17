Rails.application.routes.draw do
  resources :products

  resources :videos, only: [:index, :new, :create]
  resources :video_uploads, only: [:new, :create]

  root "videos#new"

  get "/prueba", to: "home#prueba"

  get "/about", to: "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
