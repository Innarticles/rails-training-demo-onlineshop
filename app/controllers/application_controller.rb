class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :current_order

	@products = Product.all
def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
