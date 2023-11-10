class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  
  belongs_to :category
  belongs_to :information
  belongs_to :charge
  belongs_to :prefecture
  belongs_to :delivery
  #has_many :orders,class_name: 'Order'
  has_one_attached :image
  

  #with_options presence: true
    
    
  
validates :item, presence:true,length: { maximum: 40 }
validates :price, presence:true,numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
validates :description, presence:true,length: { maximum: 1000 }
validates :category_id, numericality: { other_than: 1}
validates :information_id, numericality: { other_than: 1}
validates :charge_id, numericality: { other_than: 1}
validates :prefecture_id, numericality: { other_than: 1}
validates :estimated_day_id, numericality: { other_than: 1}
validates :image, presence:true

end
