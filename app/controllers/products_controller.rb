class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_product, only: [:show,:edit,:update,:destroy]
  before_action :validate_ownership, only: [:edit,:update,:destroy]

  def index
    if params[:category]
      @products=Product.where(category: params[:category])
    else
       @products= Product.all
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name,:url,:tagline,:category,:photo)
  end

  private
  def find_product
    @product = Product.find(params[:id])
  end

  private
  def validate_ownership
    @product = current_user.products.find_by(id: params[:id])
    unless @product
      redirect_to products_path, flash: {alert: "Vous n'avez pas les droits pour cette action"}
    end
  end
end
