# == Schema Information
#
# Table name: sellers
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  password   :string
#  updated_at :datetime         not null
#  username   :string
#

class Seller < ApplicationRecord
  
  has_many :products, dependent: :destroy
  

  validates :username, :password, presence: true
  validates :username, uniqueness: true
  validates :username, length: { maximum: 15,too_long: "%{count} characters is the maximum allowed" }
  validates :password, length: { in: 6..20 }
end
