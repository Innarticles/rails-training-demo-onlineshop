class AddPhoneNoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_no, :string
  end
end
