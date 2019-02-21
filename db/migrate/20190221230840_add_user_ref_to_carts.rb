class AddUserRefToCarts < ActiveRecord::Migration[5.2]
  def change
    add_reference :carts, :user, foreign_key: true, null: false
  end
end
