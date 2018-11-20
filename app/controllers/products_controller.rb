class ProductsController < ApplicationController
  before_action :load_product, only: [:show]

  def index
    render json: Product.all
  end

  def show
    render json: @product
  end

  private

  def load_product
    @product = Product.find(params[:id])
  end

  def product_params
    params
      .require(:product)
      .permit(:title, :price, image_urls: [])
  end
end
