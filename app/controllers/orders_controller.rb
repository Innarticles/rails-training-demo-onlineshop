class OrdersController < ApplicationController
  def create
  	
  	@order = Order.new(order_params)
  	cart_items_a = params[:order][:cart_items]
  	saved_order = false


  	saved_order = @order.save
  	cart_items_a.each  do |a|
		CartItem.find(a).update!(cart_id: nil, order_id: @order.id)
  	end


  	if saved_order
  		#current_cart = nil
  		redirect_to products_path, notice: "PURCHASED SUCCESSFUL"
  	else
  		redirect_to checkout_show_path, notice: "error in order"
  		# fla
  	end
  end

  def update
  end

  def delete
  end
 private
  def order_params
  	params.require(:order).permit(:shipping, :phone_no, :user_id, cart_items: [:id])
  end
end
