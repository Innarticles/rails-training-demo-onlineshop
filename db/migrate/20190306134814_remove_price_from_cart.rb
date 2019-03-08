class RemovePriceFromCart < ActiveRecord::Migration[5.2]
  def change
  	remove_column :carts, :price 
  end
end
