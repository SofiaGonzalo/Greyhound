Rails.application.routes.draw do
  resources :products
  root "home#index"

  get "/prueba", to: "home#prueba"

  get "/about", to: "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
