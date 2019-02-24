# == Schema Information
#
# Table name: reviews
#
#  content    :text
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  product_id :integer
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_product_id  (product_id)
#

class Review < ApplicationRecord
	belongs_to :product

	validates :content, presence: true

end
