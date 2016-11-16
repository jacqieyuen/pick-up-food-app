class API::OrdersController < ApplicationController

  before_action :authenticate_user!
  before_action :get_orders, only:[:index]
  before_action :get_order, only:[:update, :destroy, :show]

  def index
  end

  def show
    render json: @order
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

  def update
    @order.assign_attributes(prepare_ready_pickedup_params)
    if @order.save

      render json: @order

    else
      render json: {message: 'Order Cannot Be Saved'}, status: 404
    end
  end


private

def get_orders
  @orders = Order.all.order(:pick_up_time).includes(:order_products, :products)
end

def get_order
  @order = Order.find_by(id: params[:id])
end

def prepare_ready_pickedup_params
  params.permit(:preparing, :ready, :picked_up)
end

def order_params
  params.permit(:preparing, :ready, :picked_up, :user_id, :pickup_code, :pick_up_time)
end

def order_products_params
  params.permit(products: [:id])
end


end
