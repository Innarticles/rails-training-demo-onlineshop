class EditTable < ActiveRecord::Migration[5.2]
  def change
  	 add_column("products", "color", :string)
  	 add_column("products", "quantity", :integer)
  	 add_column("products", "occasion", :string)
   	 add_column("products", "sold_at", :integer)

  end
end
