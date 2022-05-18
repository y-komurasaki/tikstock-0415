class StocksController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:image, :item_name, :info, :stock_quantity).merge(user_id: current_user.id)
  end


end
