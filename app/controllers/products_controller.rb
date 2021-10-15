class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json
  end

  def create
    product = Product.new(name: params["name"], price: params["price"], image_url: params["image_url"], description: params["description"])
    product.save
    render json: product.as_json
  end

  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product = product.update
    render json: product.as_json
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product = product.destroy
  end
end
