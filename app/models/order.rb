# == Schema Information
#
# Table name: orders
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  sub_total  :string
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#

class Order < ApplicationRecord

	has_many :cart_items


	validates :user_id,  presence: true
	validates :id, uniqueness: true
end
