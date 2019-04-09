# Renders the home page.
class HomeController < ApplicationController
	
  def index
  	@products = Product.all
    @cart_item = current_cart.cart_items.new

  end
  def about
   end
   def test
   	@products = Product.all
   	
   end
   
end
