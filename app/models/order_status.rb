# == Schema Information
#
# Table name: order_statuses
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class OrderStatus < ApplicationRecord
	has_many :carts
end
