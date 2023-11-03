class Item < ApplicationRecord

  belongs_to :user
  has_one :order
  has_one_attached :image

  #with_options presence: true
    
    
  
validates :item, presence:true,length: { maximum: 40 }
validates :price, presence:true,numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 },
                  format: { with: /\A[0-9]+\z/ }
validates :description, presence:true,length: { maximum: 1000 }
validates :category_id, presence:true
validates :information_id, presence:true
validates :charge_id, presence:true
validates :prefecture_id, presence:true
validates :estimated_day_id, presence:true

end
