module OrdersHelper
  def total_order order
    @total_amount = 0
    order.order_items.each do |order_item|
      @total_amount += order_item.amount
    end
    @total_amount
  end
end
