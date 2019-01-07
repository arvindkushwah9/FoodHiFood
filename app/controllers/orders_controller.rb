class OrdersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @orders = @user.orders
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def email_callback
    puts params
  end

  # GET /printers.json
  def printers
     begin
      @orders = Order.all
      return render json: {status: 200, data: {orders: orders_as_json(orders: @orders)}, message: "successfully Listed"}
    rescue
      return render json: {status: 500, data: {orders: nil}, message: "Something went wrong"}
    end
  end
end
