# == Schema Information
#
# Table name: orders
#
#  cart_item  :belongs
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  order_id   :integer
#  sub_total  :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_orders_on_order_id  (order_id)
#

class Order < ApplicationRecord
end
