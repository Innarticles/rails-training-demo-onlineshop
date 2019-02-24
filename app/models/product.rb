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
	has_many :categories, :through => :product_categories

	

	validates :title, :price, :description, :sale_price,:quantity, presence: true
	validates :id, uniqueness: true
	validates :title, length: { maximum: 25,too_long: "%{count} characters is the maximum allowed" }


end
