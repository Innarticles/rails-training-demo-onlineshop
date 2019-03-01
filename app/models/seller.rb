# == Schema Information
#
# Table name: sellers
#
#  created_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  id                     :integer          not null, primary key
#  password               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  updated_at             :datetime         not null
#  username               :string
#
# Indexes
#
#  index_sellers_on_email                 (email) UNIQUE
#  index_sellers_on_reset_password_token  (reset_password_token) UNIQUE
#

class Seller < ApplicationRecord
   # before_create :check_moderator_limit
   has_many :products, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #change the params to username instead of email
  devise :database_authenticatable, :authentication_keys => [:username]
  
  
  

  validates :username, :password, presence: true
  validates :username, uniqueness: true
  validates :username, length: { maximum: 15,too_long: "%{count} characters is the maximum allowed" }
  validates :password, length: { in: 6..20 }



  # def check_moderator_limit
  #   if Moderator.count > 10
  #     return false
  #   end
  #   true
  # end
end
