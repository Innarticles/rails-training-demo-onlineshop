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
#  order_id     :integer
#  password     :string
#  phone_number :integer
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_users_on_order_id  (order_id)
#

class User < ApplicationRecord
  belongs_to :product
end
