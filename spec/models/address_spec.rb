require 'rails_helper'

RSpec.describe Address, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @address = FactoryBot.build(:order_form, user_id:user.id, item_id:item.id)
  end

  describe '配送情報の保存' do
    context '配送情報の保存ができるとき' do
     it 'すべての情報が入力されると保存できる' do
       expect(@address).to be_valid
    end
     it 'user_idが空出なければ保存できる' do
       @address.user_id = 1
       expect(@address).to be_valid
    end
     it '郵便番号が数字3桁-4桁であれば保存できる' do
       @address.postcode = '000-0000'
       expect(@address).to be_valid
    end
     it '都道府県が空欄でなければ保存できる' do
      @address.city = '2'
      expect(@address).to be_valid
    end
    it 'cityが空でなければ保存できる' do
      @address.city = '横浜'
      expect(@address).to be_valid
    end
     it '番地が空でなければ保存できる' do
       @address.block = '青山'
       expect(@address).to be_valid
     end
     it '建物名が空でも保存できる' do
       @address.building = nil
       expect(@address).to be_valid
     end
     it '電話番号が11桁でハイフンなしであれば保存できる' do
       @address.phone_number = '00000000000'
       expect(@address).to be_valid
     end
   
     
     context '配送先情報の保存ができないとき' do
        it '郵便番号が空だと保存できない' do
          @address.postcode = ''
          @address.valid?
          expect(@address.errors.full_messages).to include("Postcode can't be blank")
     end
        it '都道府県が選択されていないと保存できない' do
          @address.prefecture_id = '0'
          @address.valid?
          expect(@address.errors.full_messages).to include("Prefecture can't be blank")
        end
       it 'cityが空だと保存できない' do
          @address.city = ''
          @address.valid?
          expect(@address.errors.full_messages).to include("City can't be blank")
          end
          it '番地が空だと保存できない' do
          @address.block = ''
          @address.valid?
          expect(@address.errors.full_messages).to include("Block can't be blank")
          end
          it '電話番号が空だと保存できない' do
            @address.phone_number = ''
            @address.valid?
            expect(@address.errors.full_messages).to include("Phone number can't be blank", "Phone number is invalid")
          end
          it '電話番号が9桁以下であると保存できない' do
            @address.phone_number =  '0000000'
            @address.valid?
            expect(@address.errors.full_messages).to include('Phone number is invalid')
          end
          it 'トークンが空だと保存できない' do
            @address.token = ''
            @address.valid?
            expect(@address.errors.full_messages).to include("Token can't be blank")
          end

           it 'userが紐付いていなければ購入できない' do
            @address.user_id = nil
            @address.valid?
            expect(@address.errors.full_messages).to include("User can't be blank")
           end
        
           it 'itemが紐付いていなければ購入できない' do
            @address.item_id = nil
            @address.valid?
            expect(@address.errors.full_messages).to include("Item can't be blank")
           end
        end











     end

    
    end


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  pending "add some examples to (or delete) #{__FILE__}"
end
