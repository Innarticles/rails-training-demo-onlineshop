# == Schema Information
#
# Table name: products
#
#  active      :boolean
#  category    :string
#  color       :string
#  created_at  :datetime         not null
#  description :text             not null
#  id          :integer          not null, primary key
#  occasion    :string
#  price       :float            not null
#  quantity    :integer
#  seller_id   :integer
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
	has_many_attached :images
	has_one_attached :picture

	#has_many :product_categories - version 2()

	
	validates :title, :price,:seller_id, :description, presence: true
	validates :id, uniqueness: true
	validates :category, presence: true
	validates :title, length: { maximum: 25,too_long: "%{count} characters is the maximum allowed" }
	default_scope { where(active: true) }

	scope :skirts, lambda {where(:category => 'skirts')}
	scope :dress, lambda {where(:category => 'dress')}
	scope :tops, lambda {where(:category => 'tops')}
	scope :pants, lambda {where(:category => 'pants')}
	scope :sandal, lambda {where(:category => 'sandal')}
	scope :jewellery, lambda {where(:category => 'jewellry')}


end
