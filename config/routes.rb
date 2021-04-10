Rails.application.routes.draw do
  root "stores#index"
  get "stores/detail/:id", to: "stores#detail", as: "detail"
  get "carts", to: "carts#index", as: "carts"
  get "add_to_cart", to: "carts#add_to_cart", as: "add_cart"
  get "update_cart", to: "carts#update_cart", as: "update_cart"
  get "destroy_item", to: "carts#destroy_item", as: "destroy_item"
end
