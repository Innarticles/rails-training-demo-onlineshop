# == Schema Information
#
# Table name: orders
#
#  created_at      :datetime         not null
#  id              :integer          not null, primary key
#  order_status_id :integer
#  shipping        :text
#  status          :string
#  sub_total       :string
#  total_price     :decimal(, )
#  track_no        :integer
#  updated_at      :datetime         not null
#  user_id         :integer
#
# Indexes
#
#  index_orders_on_order_status_id  (order_status_id)
#  index_orders_on_user_id          (user_id)
#

class Order < ApplicationRecord

  belongs_to :order_status
	has_many :cart_items
  belongs_to :user
	# before_save :update_total
  before_create :set_order_status

	#validates :user_id,  presence: true
	validates :id, uniqueness: true

      #  def subtotal
      #     order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
      #   end
      private
        def set_order_status
          self.order_status_id = 2
        end

      #   def update_subtotal
      #     self[:sub_total] = sub_total
      #   end
	

  		# def calculate_total
  		#   self.order_items.collect { |item| item.product.price * item.quantity }.sum
  		# end
      # --------------
		
  		# private
		
  		# def update_status
  		#   if self.status == nil?
  		#     self.status = "In progress"
  		#   end
  		# end
		
  		# def update_total
  		#   self.total_price = calculate_total
  		# end
  		
end
