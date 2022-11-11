Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'

  resources :products
  
  resources :brands

  resources :sales
  post "sales/product/:product_id", to: "sales#add_product_to_sale"

end
