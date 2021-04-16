class OrderItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true

  delegate :id, :name, :price, :image, :display_image_on_cart, to: :product,
   prefix: true, allow_nil: true
end
