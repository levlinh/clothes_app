module CartsHelper
  def quantity_item product_id
    session[:cart][product_id.to_s]
  end

  def cart
    session[:cart]
  end
end
