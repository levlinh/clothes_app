module CartsHelper
  def quantity_item product_id
    session[:cart][product_id.to_s]
  end

  def cart
    if session[:cart]
      session[:cart].count
    else
      0
    end
  end

  def sub_total product
    product.last_price * quantity_item(product.id)
  end

  def total_cart products
    @total_amount = 0
    products.each do |product|
      @total_amount += sub_total product
    end
    @total_amount
  end

  def checkout
    if session[:user_id]
      new_order_path
    else
      login_path
    end
  end
end
