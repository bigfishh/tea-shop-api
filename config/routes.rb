Rails.application.routes.draw do
  resources :cart_teas
  resources :teas
  resources :carts
  resources :users
  resources :tea_varieties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
