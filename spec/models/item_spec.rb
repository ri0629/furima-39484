require 'rails_helper'

RSpec.describe Item, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.build(:item, user:@user)
  end

describe '商品出品機能' do
    context '商品登録できるとき' do
    it 'すべて存在すれば登録できる' do
      expect(@item).to be_valid
         end
       end
    end
    context '商品登録できないとき' do
     it '商品画像が空では登録できない' do
       @item.item = ''
       @item.valid?
       expect(@item.errors.full_messages).to include("Item can't be blank")
     end
   end
     it '商品名が空では登録できない' do
       @item.item = ''
       @item.valid?
       expect(@item.errors.full_messages).to include("Item can't be blank")
     end
    
     it '商品説明が空では登録できない' do
       @item.description = ''
       @item.valid?
       expect(@item.errors.full_messages).to include("Description can't be blank")
     end
    
     it 'カテゴリーidが1の場合は出品できない' do
       @item.category_id = '1'
       @item.valid?
       expect(@item.errors.full_messages).to include("Category must be other than 1")
     end
     
     it '商品の状態のidが1の場合は出品できない' do
      @item.information_id = '1'
      @item.valid?
      expect(@item.errors.full_messages).to include("Information must be other than 1")
     end
  
     it '配送料の負担のidが1の場合は出品できない' do
      @item.charge_id = '1'
      @item.valid?
      expect(@item.errors.full_messages).to include("Charge must be other than 1")
     end

     it '発送までの日数のidが1の場合は出品できない' do
      @item.estimated_day_id = '1'
      @item.valid?
      expect(@item.errors.full_messages).to include("Estimated day must be other than 1")
     end

     it '発送元idが1の場合は出品できない' do
      @item.prefecture_id = '1'
      @item.valid?
      expect(@item.errors.full_messages).to include("Prefecture must be other than 1")
     end

     it '価格が空では登録できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
     end

     it '価格が300円未満では出品できない' do
      @item.price = '100'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
     end

     it '価格が9,999,999円を超えると出品できない' do
      @item.price = '1,000,000,000'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price is not a number")
     end
     
     it '価格は半角数値以外は保存できない' do
     @item.price = '５００'
     @item.valid?
     expect(@item.errors.full_messages).to include("Price is not a number")
    end

    it '商品が40字を超えると保存できない' do
        @item.item = 'あああああああああああああああああああああああああああああああああああああああああ'
        @item.valid?
        expect(@item.errors.full_messages).to include("Item is too long (maximum is 40 characters)")
    end
    
    it '商品説明が1000字を超えると保存できない' do
      @item.description = 'a' * 1001
      @item.valid?
      expect(@item.errors.full_messages).to include("Description is too long (maximum is 1000 characters)")
  end
    
    it 'ユーザー登録していなければ保存できない' do
      @item.user_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("User must exist")
    end
    
   end
  


