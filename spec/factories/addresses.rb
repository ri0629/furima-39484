FactoryBot.define do
  factory :order_form do
      
    postcode {"000-0000"}
    prefecture_id {"2"}
    city {"横浜市"}
    block {"青山"} 
    building {"青山ビル"}
    phone_number {Faker::Number.decimal_part(digits: 11)}
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
       end
     end
