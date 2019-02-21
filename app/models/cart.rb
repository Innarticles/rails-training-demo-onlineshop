# == Schema Information
#
# Table name: carts
#
#  cart_item  :belongs
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  no_of_item :integer
#  price      :decimal(15, 3)   not null
#  product_id :integer
#  quantity   :integer
#  updated_at :datetime         not null
#
# Indexes
#
#  index_carts_on_product_id  (product_id)
#

class Cart < ApplicationRecord
end
