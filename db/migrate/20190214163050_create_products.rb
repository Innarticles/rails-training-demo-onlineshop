class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.float :price, null: false, precision: 15, scale: 3
      t.float :sale_price,  null: false,precision: 5, scale: 3
      t.string :category

      t.timestamps
    end
  end
end
