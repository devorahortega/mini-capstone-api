class OrdersController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if current_user
      order = current_user.orders
      render json: order.as_json
    else
      render json: { error: "Unauthorized" }
    end
  end

  def create
    product = Product.find_by(id: params["product_id"])

    subtotal = product.price * params[:quantity]
    tax = subtotal * 0.09
    total = tax + subtotal

    order = Order.new(
      user_id: current_user.id,
      quantity: params["quantity"],
      subtotal: subtotal,
      tax: tax,
      total: total,
    )

    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }
    end
  end

  def show
    order = current_user.orders.find_by[id: params["id"]]
    render json: order.as_json
  end

  def authenticate_user
  end
end
