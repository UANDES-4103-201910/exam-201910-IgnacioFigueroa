class CreateShippingAddressOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_address_orders do |t|
      t.references :address, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
