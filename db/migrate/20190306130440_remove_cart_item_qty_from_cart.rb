class RemoveCartItemQtyFromCart < ActiveRecord::Migration[5.2]
  def change
  	remove_column :carts, :cart_item_qty, :integer
  end
end
