class EditCartitemsField < ActiveRecord::Migration[5.2]
  def change
  	remove_column('cart_items', 'price')
  	add_column :cart_items, :unit_price, :decimal
  	add_column :cart_items, :total_price, :decimal
  end
end
