# == Schema Information
#
# Table name: cart_items
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  price      :decimal(15, 3)   not null
#  product_id :integer
#  quantity   :integer          default(0), not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cart_items_on_product_id  (product_id)
#

class CartItem < ApplicationRecord
  belongs_to :product
end
