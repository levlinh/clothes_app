module CartsHelper
  def quantity_item product_id
    session[:cart][product_id.to_s]
  end

  def cart
    session[:cart]
  end

  def sub_total product
    product.price * quantity_item(product.id)
  end

  def total_cart
    @sum = 0
    session[:cart].keys.each do |product|
      @sum = product.price * session[:cart][product.id.to_s]
    end
  end
end
