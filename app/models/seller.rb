# == Schema Information
#
# Table name: sellers
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  password   :string
#  product_id :integer
#  updated_at :datetime         not null
#  username   :string
#
# Indexes
#
#  index_sellers_on_product_id  (product_id)
#

class Seller < ApplicationRecord
  belongs_to :product
end
