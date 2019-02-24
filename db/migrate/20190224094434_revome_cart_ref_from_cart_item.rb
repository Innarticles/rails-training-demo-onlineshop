class RevomeCartRefFromCartItem < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :carts, :cart_item, foreign_key: true
  end
end
