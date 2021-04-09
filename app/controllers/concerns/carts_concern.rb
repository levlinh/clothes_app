module CartsConcern
  def set_quantity_item
    if @cart.key?(params[:product_id])
      @cart[params[:product_id.to_s]] += params[:quantity].to_i
    else
      @cart[params[:product_id].to_i] = params[:quantity].to_i
    end
  end

  def sub_total
    @sub_total = 0
    @products.each do |product|
      @sub_total += (product.price * session[:cart][product.id.to_s])
    end
  end
end
