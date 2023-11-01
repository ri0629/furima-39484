require 'rails_helper'

RSpec.describe Item, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @item = Factorybot.build(:item)
  end

  describe '商品登録' do
    context '商品登録できるとき' do
    it 'すべて存在すれば登録できる' do
      expect(@item).to be_valid
    end
  end

    
    context '商品登録できないとき' do
    it '商品画像が空では登録できない' do
    end
  end

    it '商品名が空では登録できない' do
    end
    it '商品説明が空では登録できない' do
    end
    it 'カテゴリーが空では登録できない' do
    end
    it '商品の状態が空では登録できない' do
    end
    it '配送料の負担が空では登録できない' do
    end
    it '配送元の地域が空では登録できない' do
    end
    it '発送までの日数が空では登録できない' do
    end
    it '価格が空では登録できない' do
    end
  end
    


