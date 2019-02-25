class AddFieldsToOrder < ActiveRecord::Migration[5.2]
  def change
  	 add_column("orders", "total_price", :decimal)
  	 add_column("orders", "shipping", :text)
  	 add_column("orders", "track_no", :integer)
  	 
  end
end
