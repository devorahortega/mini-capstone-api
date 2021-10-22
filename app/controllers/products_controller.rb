class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product
  end

  def create
    product = Product.new(name: params["name"], price: params["price"], description: params["description"])

    #, image_url: params["image_url"]

    if product.save
      render json: product
    else
      render json: { message: product.errors.full_messages }
    end
  end

  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    #product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.supplier_id = params["supplier_id"] || product.supplier_id

    if product.save
      render json: product
    else
      render json: { message: product.errors.full_messages }
    end
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.destroy
    render json: { message: "This product has been destroyed!" }
  end
end
