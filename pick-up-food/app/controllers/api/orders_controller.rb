class API::OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Order.all
  end

  def create
    @order = Order.new(order_params)


    if @order.save
      order_products_params[:products].each do |product|
        puts(product)
        @order.order_products.create(product_id: product[:id])
      end
      render json: @order
    else
      render json: {message: "error"}
    end

  end

private

def order_params
  params.permit(:preparing, :ready, :picked_up, :user_id, :pickup_code, :pick_up_time)
end

def order_products_params
  params.permit(products: [:id])
end


end
