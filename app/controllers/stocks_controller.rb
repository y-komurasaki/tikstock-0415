class StocksController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
 before_action :set_stock, only: [:show, :edit, :update, :destroy]
 
  def index
    @stocks = Stock.includes(:user).order("created_at DESC")
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

  def edit
    unless user_signed_in? 
      redirect_to root_path
    end
  end

  def update
    if @stock.update(stock_params)
      redirect_to stock_path(@stock.id)
    else
      render :edit
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
