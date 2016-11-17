class API::OrdersController < ApplicationController

  before_action :authenticate_user!
  before_action :get_todays_orders, only:[:index]
  before_action :get_todays_order, only:[:update, :destroy, :show]
  before_action :get_orders, only: [:get_all_orders]
  before_action :get_order, only: [:get_any_order]

  def index
  end

  def show
  end

  def get_all_orders
  end

  def get_any_order
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
  @all_orders = Order.includes(:order_products, :products).order(:pick_up_time)
end

def get_order
  @any_order = Order.includes(:order_products, :products).find_by(id: params[:id])
end

def get_todays_orders
  @orders = Order.includes(:order_products, :products).where("created_at >= ?", Time.zone.now.beginning_of_day).order(:pick_up_time)
end

def get_todays_order
  @order = Order.includes(:order_products, :products).where("created_at >= ?", Time.zone.now.beginning_of_day).find_by(id: params[:id])
  if @order.nil?
      render json: "null"
  end

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
