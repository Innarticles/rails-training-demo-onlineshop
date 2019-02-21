# == Schema Information
#
# Table name: products
#
#  color       :string
#  created_at  :datetime         not null
#  description :text             not null
#  id          :integer          not null, primary key
#  occasion    :string
#  price       :float            not null
#  quantity    :integer
#  review_id   :integer
#  sale_price  :float            not null
#  sold_at     :integer
#  title       :string           not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_review_id  (review_id)
#

class Product < ApplicationRecord
end
