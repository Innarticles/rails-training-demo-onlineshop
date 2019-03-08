# == Schema Information
#
# Table name: cart_items
#
#  cart_id     :integer
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  order_id    :integer
#  product_id  :integer
#  quantity    :integer          default(0), not null
#  total_price :decimal(, )
#  unit_price  :decimal(, )
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_cart_items_on_cart_id     (cart_id)
#  index_cart_items_on_order_id    (order_id)
#  index_cart_items_on_product_id  (product_id)
#

class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :order , optional: true

  belongs_to :cart
 

  # validates :unit_price, :quantity,:order, presence: true
  # validates :id, uniqueness: true


  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def cart_present
    if cart.nil?
      errors.add(:cart, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
