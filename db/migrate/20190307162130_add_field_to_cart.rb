class AddFieldToCart < ActiveRecord::Migration[5.2]
  def change
    add_reference :carts, :order_status, foreign_key: true
    add_column :carts, :subtotal, :decimal
    add_column :carts, :total, :decimal
  end
end
 