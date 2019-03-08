# == Schema Information
#
# Table name: carts
#
#  created_at      :datetime         not null
#  id              :integer          not null, primary key
#  order_status_id :integer
#  subtotal        :decimal(, )
#  total           :decimal(, )
#  updated_at      :datetime         not null
#  user_id         :integer
#
# Indexes
#
#  index_carts_on_order_status_id  (order_status_id)
#  index_carts_on_user_id          (user_id)
#

class Cart < ApplicationRecord
	belongs_to :user , optional: true    
  has_many :cart_items
  belongs_to :order_status , optional: true
  before_create :set_order_status
  before_save :update_subtotal
	
	

	def subtotal
    cart_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end


end
