module OrdersHelper
  def load_product_from_order order_item
    @product = Product.find_by(id: order_item.product_id)
  end

  def total_order order
    @total_amount = 0
    order.order_items.each do |order_item|
      load_product_from_order(order_item)
      @total_amount += order_item.amount
    end
    @total_amount
  end
end
