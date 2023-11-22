class OrderForm
  include ActiveModel::Model

  #belongs_to :prefecture,class_name: 'Prefecture'

  attr_accessor :token, :user_id, :item_id, :postcode, :prefcture_id, :city, :block, :building, :phone_number

  # ここにバリデーションの処理を書く
  #validates :, presence: true

  with_options presence: true do

    validates :user_id
    validates :item_id

    validates :postcode, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }
    validates :city
    validates :phone_number, format: { with: /\A[0-9]{11}\z/, message: 'is invalid' }

    validates :token

end


end
  def save
    # 各テーブルにデータを保存する処理を書く
    order = Order.create (user_id: user_id, item_id: item_id)
    #addresses.create(postcode: postcode, prefecture_id: prefecture_id, city: city, block: block, building: building, phone_number: phone_number)
    Address.create(order_id: order.id, postcode: postcode, prefecture_id: prefecture_id, city: city, block: block, building: building, phone_number: phone_number)
  end
end