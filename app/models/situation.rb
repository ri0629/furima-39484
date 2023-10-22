class Situation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :information

  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
end

end
