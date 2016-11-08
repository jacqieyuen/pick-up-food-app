class API::CategoriesController < ApplicationController

  def index
    render json: @categories = Category.all
  end

end
