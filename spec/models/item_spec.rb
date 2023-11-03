require 'rails_helper'

RSpec.describe Item, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.build(:item, user:@user)
  end

  describe '商品登録' do
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
    
     it 'カテゴリーが空では登録できない' do
       @item.category_id = ''
       @item.valid?
       expect(@item.errors.full_messages).to include("Category can't be blank")
     end
     
     it '商品の状態が空では登録できない' do
      @item.information_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Information can't be blank")
     end
  
     it '配送料の負担が空では登録できない' do
      @item.charge_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Charge can't be blank")
     end

     it '発送までの日数が空では登録できない' do
      @item.estimated_day_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Estimated day can't be blank")
     end

     it '発送元が空では登録できない' do
      @item.prefecture_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Prefecture can't be blank")
     end

     it '価格が空では登録できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
     end

     it '価格は、¥300~¥9,999,999でないと登録できない' do
      @item.price = '100'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
     end
    
     it '価格は半角数値以外は保存できない' do
     @item.price = '５００'
     @item.valid?
     expect(@item.errors.full_messages).to include("Price is not a number")
    end
    
   end
  


