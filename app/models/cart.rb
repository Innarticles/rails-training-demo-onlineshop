# == Schema Information
#
# Table name: carts
#
#  cart_item_qty :integer
#  created_at    :datetime         not null
#  id            :integer          not null, primary key
#  price         :decimal(15, 3)   not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
# Indexes
#
#  index_carts_on_user_id  (user_id)
#

class Cart < ApplicationRecord
	belongs_to :user
	has_many :cart_items
	validates :price, :cart_item_qty,:user_id, :cart_item_id, presence: true
	validates :id, :cart_item_id, uniqueness: true
end
