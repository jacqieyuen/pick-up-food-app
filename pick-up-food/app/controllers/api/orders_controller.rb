class API::OrdersController < ApplicationController

  def index
    render json: Order.all
  end

  def get_client_token
     render json: {key: Braintree::ClientToken.generate}
  end

end
