class ApplicationController < ActionController::Base
  include StoresHelper
  include CartsHelper
  include SessionsHelper
  include OrdersHelper

  rescue_from CanCan::AccessDenied do |exception|
    flash[:warning] = exception.message
    redirect_to root_url
  end

  before_action :set_cart

  private

  def set_cart
    session[:cart] ||= {}
    @cart = session[:cart]
  end
end
