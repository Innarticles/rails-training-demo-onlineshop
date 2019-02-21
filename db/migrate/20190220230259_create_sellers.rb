class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :username
      t.string :password
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
