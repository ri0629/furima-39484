FactoryBot.define do
  factory :address do
      
    user_id { Faker::Number.non_zero_digit }
    item_id { Faker::Number.non_zero_digit }
    postcode {"000-0000"}
    prefecture_id {"2"}
    city {横浜市}
    block {青山} 
    building {青山ビル}
    phone_number {00000000000}
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
       end
     end
