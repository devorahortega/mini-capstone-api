class OrdersController < ApplicationController
  def index
    order = Order.all
    render json: order.as_json
  end

  def create
    product = Product.find_by(id: params["product_id"])

    subtotal = product.price * params[:quantity]
    tax = subtotal * 0.09
    total = tax + subtotal

    order = Order.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: subtotal,
      tax: tax,
      total: total,
    )

    if order.save
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages }
    end
  end

  def show
    order = Order.find_by(id: params["id"])
    render json: order.as_json
  end
end
