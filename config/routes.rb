Rails.application.routes.draw do
  get 'shopping_cart', to: 'shopping_cart#show'
  post 'shopping_cart/add/:id', to: 'shopping_cart#add_product', as: "add_product"
  get 'handsets', to: 'home#handsets', as: "handsets"
  get 'subscriptions', to: 'home#subscriptions', as: 'subscriptions'
  get 'prepay_options', to: 'home#prepay_options', as: 'prepay_options'
  get 'shopping_cart/update'
  resources :orders
  resources :products
  devise_for :users
  resources :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
