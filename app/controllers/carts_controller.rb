class CartsController < ApplicationController
  def index
    @products = Product.load_product_on_cart(session[:cart].keys)
  end

  def add_to_cart
    if @cart.key?(params[:product_id])
      @cart[params[:product_id.to_s]] += params[:quantity].to_i
    else
      @cart[params[:product_id].to_i] = params[:quantity].to_i
    end
    session[:cart] = @cart
    respond_to do |format|
      format.js
      format.html{redirect_to carts_url flash[:success] = t("cart.add_success")}
    end
  end
end
