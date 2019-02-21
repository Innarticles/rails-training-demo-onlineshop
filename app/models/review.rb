# == Schema Information
#
# Table name: reviews
#
#  content    :text
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
end
