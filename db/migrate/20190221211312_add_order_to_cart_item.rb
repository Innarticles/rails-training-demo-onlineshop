class AddOrderToCartItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :order, foreign_key: true, null: false
  end
end