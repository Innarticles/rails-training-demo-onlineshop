class ShopController < ApplicationController
  def skirts
    @products = Product.skirts
    @cart_item = current_cart.cart_items.new
  end

  def dress
  end

  def tops
  end

  def pants
  end

  def sandal
  end

  def jewellery
  end
end
