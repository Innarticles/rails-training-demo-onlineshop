class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :sub_total, precision: 15, scale: 3

      t.timestamps
    end
  end
end
