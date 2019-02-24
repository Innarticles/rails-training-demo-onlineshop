# == Schema Information
#
# Table name: users
#
#  address      :text
#  created_at   :datetime         not null
#  email        :string
#  first_name   :string
#  id           :integer          not null, primary key
#  last_name    :string
#  password     :string
#  phone_number :integer
#  updated_at   :datetime         not null
#  username     :string
#

class User < ApplicationRecord
	has_one :cart
	has_many :orders
  

  validates :username, :password, :address, :email, :first_name, :last_name, :phone_number, presence: true
  validates :username, :email, :phone_number, uniqueness: true
  validates :username, exclusion: { in: %w(admin administrator account admins), message: "%{value} is reserved." }
  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  validates :username, length: { maximum: 25,too_long: "%{count} characters is the maximum allowed" }
  validates :password, length: { in: 6..20 }
  validates :first_name, length: { maximum: 25,too_long: "%{count} characters is the maximum allowed" }
  validates :last_name, length: { maximum: 25,too_long: "%{count} characters is the maximum allowed" }
end
