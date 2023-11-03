class Item < ApplicationRecord

  belongs_to :user
  #has_one :order
  has_one_attached :image
  has_many :items

  #with_options presence: true
    
    
  
validates :item, presence:true,length: { maximum: 40 }
validates :price, presence:true,numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
validates :description, presence:true,length: { maximum: 1000 }
validates :category_id, numericality: { other_than: 1}
validates :information_id, numericality: { other_than: 1}
validates :charge_id, numericality: { other_than: 1}
validates :prefecture_id, numericality: { other_than: 1}
validates :estimated_day_id, numericality: { other_than: 1}

end
