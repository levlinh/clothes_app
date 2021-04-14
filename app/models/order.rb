class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user, optional: true

  validates :name_shipping, presence: true
  validates :phone_shipping, presence: true
  validates :address_shipping, presence: true
end
