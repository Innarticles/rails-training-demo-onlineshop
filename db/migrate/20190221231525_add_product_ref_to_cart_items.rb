class AddProductRefToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :product, foreign_key: true, null: false
  end
end
