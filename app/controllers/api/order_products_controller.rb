class API::OrderProductsController < ApplicationController

  before_action :authenticate_user!
  before_action :get_orderproducts

  def show
  end

private

def get_orderproducts
  @orderproducts = Order.find_by(id: params[:id]).order_products.includes(:product)

end
end
