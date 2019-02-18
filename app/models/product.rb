# == Schema Information
#
# Table name: products
#
#  category    :string
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  price       :float
#  sale_price  :float
#  title       :string
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
end
