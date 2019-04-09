class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :detail, :edit, :update, :destroy]
  before_action :authenticate_seller!, :except => [:detail, :index]
  # GET /products
  def index
    @products = Product.all
    @cart_item = current_cart.cart_items.new
  end

  # GET /products/1
  def show
  end

  def detail
    
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)
    @product.seller_id = current_seller.id

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
    redirect_to dashborad_path
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:title,:quantity,:occasion, :description,:color, :price,:picture, :category, images: [])
    end
end