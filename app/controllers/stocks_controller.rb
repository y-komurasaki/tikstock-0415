class StocksController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
 before_action :set_stock, only: [:show, :edit, :update, :destroy]
 
  def index
    @stocks = Stock.all
  end

  def show
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

  def set_stock
    @stock = Stock.find(params[:id])
  end


end
