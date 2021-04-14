class OrdersController < ApplicationController
  include OrdersConcern

  def show
    @order = Order.find_by(user_id: session[:user_id])
  end

  def new
    @products = Product.load_product_on_session_cart(session[:cart].keys)
    @user = User.find_by(id: session[:user_id])
  end

  def create
    build_order
    if @order.save
      session.delete :cart
      flash.now[:success] = t("order.success")
      render :show
    else
      flash[:danger] = t("order.faild")
      redirect_to new_order_path
    end
  end

  private

  def order_params
    params.permit(:name_shipping, :phone_shipping, :address_shipping)
  end
end
