require 'rails_helper'

RSpec.describe Stock, type: :model do
  before do
    @stock = FactoryBot.build(:stock)
end

describe '商品登録' do
  
  context '新規登録がうまくいくとき' do
    it '全ての項目が正しく入力されてあれば登録できる' do
      expect(@stock).to be_valid
    end
  end

  context '商品登録がうまくいかないとき' do
    it 'imageが空では登録されない' do
      @stock.image = nil
      @stock.valid?
      expect(@stock.errors.full_messages).to include("Image can't be blank")
    end

    it 'item_nameが空では登録できない' do
      @stock.item_name = ''
      @stock.valid?
      expect(@stock.errors.full_messages).to include("Item name can't be blank")
    end

    it 'infoが空では登録できない' do
      @stock.info = ''
      @stock.valid?
      expect(@stock.errors.full_messages).to include("Info can't be blank")
    end


    it 'stock_quantityが空では登録されない' do
      @stock.stock_quantity = ''
      @stock.valid?
      expect(@stock.errors.full_messages).to include("Stock quantity can't be blank")
    end

    it 'stock_quantityが半角数字以外では登録できない' do
      @stock.stock_quantity = '１０００'
      @stock.valid?
      expect(@stock.errors.full_messages).to include('Stock quantity is not a number')
    end

    it 'ユーザーが紐付いていなければ投稿できない' do
      @stock.user = nil
      @stock.valid?
      expect(@stock.errors.full_messages).to include('User must exist')
    end
  end
end
end
