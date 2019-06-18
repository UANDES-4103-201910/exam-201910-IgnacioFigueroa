class Address < ApplicationRecord
  belongs_to :user_address
  belongs_to :shipping_address_order
  belongs_to :billing_address
end
