class AddCartItemRefToCarts < ActiveRecord::Migration[5.2]
  def change
     add_reference :carts, :cart_item, foreign_key: true
  end
end
