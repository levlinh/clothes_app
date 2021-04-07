class CartsController < ApplicationController
  def index
    add_to_cart
    @products = Product.find(@cart)
  end

  private

  def add_to_cart
    @product = Product.load_product_on_cart params[:product_id]
    return if @cart.include?(@product.ids)

    @cart << @product.ids
    session[:cart] = @cart
  end
end
