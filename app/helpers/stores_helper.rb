module StoresHelper
  def display_image product
    product.image if product.image.attached?
  end
end
