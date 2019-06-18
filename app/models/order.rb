class Order < ApplicationRecord
  belongs_to :user
  has_one :billing_address
  has_one :address, through: :billing_address
  has_one :shipping_address_order
  has_one :address, through: :shipping_address_order
  has_many :order_products
  has_many :products, through: :order_products

end
