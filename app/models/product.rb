# == Schema Information
#
# Table name: products
#
#  active      :boolean
#  color       :string
#  created_at  :datetime         not null
#  description :text             not null
#  id          :integer          not null, primary key
#  occasion    :string
#  price       :float            not null
#  quantity    :integer
#  sale_price  :float            not null
#  seller_id   :integer
#  sold_at     :integer
#  title       :string           not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_seller_id  (seller_id)
#

class Product < ApplicationRecord
	belongs_to :seller
	has_many :reviews
	has_many :product_categories
	
	validates :title, :price,:seller_id, :description, :sale_price, presence: true
	validates :id, uniqueness: true
	validates :title, length: { maximum: 25,too_long: "%{count} characters is the maximum allowed" }
	default_scope { where(active: true) }

end
