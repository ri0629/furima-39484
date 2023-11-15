class Address < ApplicationRecord
    include ActiveModel::Model

    belongs_to :order

    attr_accessor :token, :user_id, :item_id, :postcode, :prefcture_id, :city, :block, :building, :phone_number
  
    # ここにバリデーションの処理を書く
    #validates :presence :true
  
  
    def save
      # 各テーブルにデータを保存する処理を書く
      order = Order.create(user_id: user_id, item_id: item_id)
      addresses.create(postcode: postcode, prefecture_id: prefecture_id, city: city, block: block, building: building, phone_number: phone_number)
    end
  end

