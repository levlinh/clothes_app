class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :detail_orders, dependent: :destroy
  has_many_attached :images

  after_commit :add_default_image, on: [:create, :update]

  enum size: {L: 0, S: 1, M: 2}

  scope :load_product_for_home_page,
        ->{select(:id, :name, :price, :image, :size).order(name: :asc)}
  scope :load_product_by_cate,
        lambda{|cate_id|
  select(:id, :name, :price, :image, :size).where(category_id: cate_id)}
  scope :load_product_on_cart,
        lambda{|product_id|
  select(:id, :name, :price, :discount, :image).where(id: product_id)}
  scope :load_by_key_search, ->(search){where("name LIKE ? ", "%#{search}%").order(name: :asc)}


  def display_image
    images[0].variant resize_to_limit: [Settings.product.image_home,
      Settings.product.image_home]
  end

  def display_image_on_cart
    images[0].variant resize_to_limit: [Settings.product.image_cart,
      Settings.product.image_cart]
  end

  private

  def add_default_image
    return if images.attached?

    images.attach(io:
      File.open(Rails.root.join("app", "assets", "images", "shop_03.jpg")),
      filename: "shop_03.jpg",
      content_type: "image/jpg")
  end
end
