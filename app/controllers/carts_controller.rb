class CartsController < ApplicationController
  include CartsConcern

  def index
    @products = Product.load_product_on_session_cart(session[:cart].keys)
  end

  def add_to_cart
    set_quantity_item
    session[:cart] = @cart
    respond_to do |format|
      format.js
      format.html{redirect_to carts_url flash[:success] = t("cart.add_success")}
    end
  end

  def update_cart
    @cart[params[:product_id].to_i] = params[:quantity].to_i
    session[:cart] = @cart
    flash[:success] = t("cart.update_success")
    redirect_to carts_url
  end

  def destroy_item
    @cart.delete params[:product_id]
    session[:cart] = @cart
    flash[:success] = t("cart.delete_success")
    redirect_to carts_url
  end
end
