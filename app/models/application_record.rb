class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true


  @products = Product.all
end
