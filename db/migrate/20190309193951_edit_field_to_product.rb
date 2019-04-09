class EditFieldToProduct < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :sold_at, :integer
  	remove_column :products, :sale_price, :float
  	add_column :products, :category, :string
  end
end
