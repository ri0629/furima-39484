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
validates :situation_id, presence: true
validates :delivert_charge_id, presence: true
validates :Prefecture_id, presence: true
validates :estimated_day_id, presence: true

end
