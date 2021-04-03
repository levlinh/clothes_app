module StoresHelper
  def display_image product
    product.display_image if product.image.attached?
  end
end
