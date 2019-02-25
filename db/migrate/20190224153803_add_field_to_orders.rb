class AddFieldToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column("orders", "status", :varchar)
  end
end
