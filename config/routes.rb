Rails.application.routes.draw do
  root "stores#index"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "stores/detail/:id", to: "stores#detail", as: "detail"

  get "carts", to: "carts#index", as: "carts"
  get "add_to_cart", to: "carts#add_to_cart", as: "add_cart"
  get "update_cart", to: "carts#update_cart", as: "update_cart"
  get "destroy_item", to: "carts#destroy_item", as: "destroy_item"

  post "/orders", to: "orders#create", as: "orders"
  get "/order/:id", to: "orders#show"
  resources "orders"
  get "products/new"

  get '*path', to: redirect('/'), constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
