class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :quantity,null: false, default: 0
      t.decimal :price, null: false, precision: 15, scale: 3

      t.timestamps
    end
  end
end
