# == Schema Information
#
# Table name: orders
#
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  shipping    :text
#  status      :string
#  sub_total   :string
#  total_price :decimal(, )
#  track_no    :integer
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#

class Order < ApplicationRecord

	has_many :cart_items
	before_save :update_total
    before_create :update_status

	#validates :user_id,  presence: true
	validates :id, uniqueness: true


	

  		def calculate_total
  		  self.order_items.collect { |item| item.product.price * item.quantity }.sum
  		end
		
  		private
		
  		def update_status
  		  if self.status == nil?
  		    self.status = "In progress"
  		  end
  		end
		
  		def update_total
  		  self.total_price = calculate_total
  		end
  		
end
