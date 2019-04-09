class CheckoutController < ApplicationController
	before_action :authenticate_user!

  def show
  		@cart_item = current_cart.cart_items
  		@order = Order.new
  		@user = current_user
  end
  # def create
  # 	@order = Order.new(order_params)
  # 	if @order.save
  # 		#make cart nill
  # 		#redirect to success purcashed page/invoice print
  # 	else
  # 		render :show
  # 		#flash notice purchased wasnt successfull
  # 		#with an error
  		
  # 	end
  	
  # end
  # private
  # def order_params
  # 	params.require(:ot)
  # 	# 
  # end
end
