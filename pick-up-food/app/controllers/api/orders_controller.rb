class API::OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Order.all
  end

  def create
    @order = Order.create(order_params)

    if @order
      render json: @order
    else
      render json: {message: "error"}
    end

  end

private

def order_params
  params.permit(:preparing, :ready, :picked_up, :user_id, :pickup_code, :pick_up_time)
end



end
