class ApplicationController < ActionController::Base
  include StoresHelper
  before_action :set_cart

  private

  def set_cart
    session[:cart] ||= {}
    @cart = session[:cart]
  end
end
