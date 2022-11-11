Rails.application.routes.draw do
  resources :sales
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'

  resources :products
  resources :brands

  #get "sales/product/:product", to: "sales#add_product_to_sale"
  #get "sales/product/:id", to: "sales#add_product_to_sale"
  #get "sales/:product", to: "sales#add_product_to_sale"
  #post "sales/:product/add_product_to_sale" => "sales#add_product_to_sale", as: "add_product_to_sale"
  #post "sales/product/:product_id", to: "sales#add_product_to_sale"
  
  post "sales/product/:product_id", to: "sales#add_product_to_sale"


end
