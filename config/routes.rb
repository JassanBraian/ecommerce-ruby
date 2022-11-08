Rails.application.routes.draw do
  get 'sale_products/add_product_to_cart'
  resources :sales
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'

  resources :products
  resources :brands
  resources :sale_product
  
end
