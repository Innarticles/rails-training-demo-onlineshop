class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :cart_item_qty
      t.decimal :price, null: false, precision: 15, scale: 3
     

      t.timestamps
    end
  end
end
