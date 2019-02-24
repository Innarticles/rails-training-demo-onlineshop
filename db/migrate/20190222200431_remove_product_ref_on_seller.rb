class RemoveProductRefOnSeller < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :sellers, :product, foreign_key: true
  end
end
