class DashboardController < ApplicationController

  layout 'admin'
  before_action :authenticate_seller!
  # before_action :find_seller_id
  def index
    @products = current_seller.products.all
    #@products = @seller.products.all
    # @products = Product.where(:seller_id => @seller.id).all
  end

  def new
    #@product = Product.new({:seller_id => current_seller.id})
    #@product = current_seller.products.new(product_params)
   # @product = Product.new(product_params)
  end
  
  def create
    # @product = Product.new(product_params)
    # @product.seller_id = current_seller.id
    # fdf
    #  if @product.save
    #     redirect_to(:action => 'index', :seller_id => current_seller.id)
    #  else
    #    render('new')
    #  end
     
  end

  def edit
  end

  def show
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :sale_price, :quantity, :seller_id)
    end
end

# FAILED METHOD
# ---- CREATE PRODUCT
 # @product = current_seller.products.new(product_params)
 #     # @product = Product.new(product_params)
 #     # @product.seller_id = current_seller.id

 #    if @product.save
 #      redirect_to dashboard_path, notice: 'Product was successfully created.'
 #    else
 #      render path_dashboard
 #    end
