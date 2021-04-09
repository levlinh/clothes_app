Rails.application.routes.draw do
  root "stores#index"
  get "stores/detail/:id", to: "stores#detail", as: "detail"
  get "carts", to: "carts#index", as: "carts"
  get "add_to_cart", to: "carts#add_to_cart", as: "add_cart"
end
