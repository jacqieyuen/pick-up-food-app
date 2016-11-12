class API::OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Order.all
  end

  def get_client_token
     render json: {key: Braintree::ClientToken.generate}
  end

  def create
    # nonce = nonce_params
    # render action: :new and return unless nonce
    @result = Braintree::Transaction.sale(transaction_params)
    if @result.success?
      render json: {message:"success"}
    else
      render json: {message:"fail", errors: @results.errors}
    end
    # flash[:notice] = "Sale successful. Head to Sizzler" if @result.success?
    # flash[:alert] = "Something is amiss. #{result.transaction.processor_response_text}" unless @result.success?
    # redirect_to action: :get_client_token
  end

private

  # def nonce_params
  #   params.permit(:payment_method_nonce)
  # end

  def transaction_params
    params.permit(:amount, :payment_method_nonce)
  end

end
