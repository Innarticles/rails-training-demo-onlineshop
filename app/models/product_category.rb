# == Schema Information
#
# Table name: product_categories
#
#  category_id :integer
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  product_id  :integer
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_product_categories_on_category_id  (category_id)
#  index_product_categories_on_product_id   (product_id)
#

class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category
end
