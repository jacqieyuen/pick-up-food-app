class API::UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :get_user_orders, only: [:show]


  def user_profile
    render json: current_user
  end

  def show
    # render json: @user_orders
  end

private
  def get_user_orders
    @user_orders = @current_user.orders.includes(:order_products, :products)
  end
end
