Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/teas', to: 'teas#index'
  get '/tea_varieties', to: 'tea_varieties#index'

  get '/users/:id', to: 'users#show'
  post '/login', to: 'users#login'
  get '/keep_logged_in', to: 'users#keep_logged_in'

  post '/cart_teas', to: 'cart_teas#create'
  post '/cart_teas/:id', to: 'cart_teas#create'

  patch '/carts/:id/checkout', to: 'carts#update'
end
