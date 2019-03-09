class CheckoutController < ApplicationController
	before_action :authenticate_user!

  def show
  		@cart_item = current_cart.cart_items
  		@order = Order.new
  		@user = current_user
  end
end
