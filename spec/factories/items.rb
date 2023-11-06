FactoryBot.define do

  factory :item do
    item {"あああ"}
    description {"あああ"}
    category_id {2}
    information_id {2} 
    charge_id {2}
    prefecture_id {2}
    estimated_day_id {2}
    price {500}  
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

       end
     end