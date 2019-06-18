Rails.application.routes.draw do
  get 'shopping_cart', to: 'shopping_cart#show'
  get 'shopping_cart/add/:product_id/:amount', to: 'shopping_cart#add_product', defaults: {amount: 1}

  get 'shopping_cart/update'
  resources :orders
  resources :products
  devise_for :users
  resources :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
