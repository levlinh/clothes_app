Rails.application.routes.draw do
  get 'carts/index'
  root "stores#index"
  get "stores/detail/:id", to: "stores#detail", as: "detail"
  get "carts/:id", to: "carts#index", as: "carts"
end
