class Item < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one_attached :image

  with_options presence: true do
end
  
validates :item, presence: true
validates :price, presence: true
validates :description, presence: true
validates :category_id, presence: true
#validates :situation_id, presence: true
#validates :delivery_charge_id, presence: true
#validates :prefecture_id, presence: true
#validates :estimated_day_id, presence: true

end
