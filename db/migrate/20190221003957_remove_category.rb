class RemoveCategory < ActiveRecord::Migration[5.2]
  def up
  	remove_column('products', 'category')
  end
   def down
  	add_column('products', 'category', :string)
  end
end
