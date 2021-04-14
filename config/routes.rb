Rails.application.routes.draw do
  resources :products
  root "home#index"

  get "/prueba", to: "home#prueba"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
