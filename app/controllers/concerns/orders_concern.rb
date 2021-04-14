module OrdersConcern
  def build_order
    products = Product.load_product_on_session_cart(session[:cart].keys)
    @order = Order.new(order_params)
    products.each do |product|
      quantity = quantity_item(product.id)
      @order.order_items.build(product_id: product.id, price: product.price,
        quantity: quantity, amount: sub_total(product))
    end
    @order.user_id = session[:user_id]
  end
end
