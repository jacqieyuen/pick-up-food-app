class Api::OrdersController < ApplicationController

  def index
    render json: Order.all
  end


end
