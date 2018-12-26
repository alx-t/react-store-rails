class OrdersController < ApplicationController
  def create
    p params
    render json: {}, status: :created
    # render json: { error: 'custom error'}, status: 422
  end
end
