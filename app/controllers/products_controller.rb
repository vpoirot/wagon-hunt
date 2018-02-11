class ProductsController < ApplicationController
  def index
    @products = ["kudoz", "google","java"]
  end
end
