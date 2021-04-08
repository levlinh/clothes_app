class CartsController < ApplicationController
  def index
    add_to_cart
    @products = Product.load_product_on_cart(session[:cart].keys)
  end

  private
  def add_to_cart
    return if @cart.key?(params[:product_id])

    @cart[params[:product_id].to_i] = params[:quantity].to_i
    session[:cart] = @cart
  end
end
