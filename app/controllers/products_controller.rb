class ProductsController < ApplicationController
  def all_products
    product = Product.all
    render json: product.as_json
  end

  def one_product
    product_id = params[:id].to_s
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def search_products
  end
end
