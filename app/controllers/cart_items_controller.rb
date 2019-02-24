class CartItemsController < ApplicationController

	def create
    @order = current_order
    @item = @order.cart_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  private

  def item_params
    params.require(:cart_item).permit(:quantity, :product_id)
  end
end
