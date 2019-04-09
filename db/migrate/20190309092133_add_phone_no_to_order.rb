class AddPhoneNoToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :phone_no, :integer
  end
end
