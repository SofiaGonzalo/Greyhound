Rails.application.routes.draw do
  resources :videos, only: [:index, :new, :create]
  resources :video_uploads, only: [:new, :create]
  root "home#index"
  get "/about", to: "home#prueba" 
end
