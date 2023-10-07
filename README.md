# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation


 ## users テーブル

  | Colum              | Type        | Options      |
  | last_name          |                               
  | first_name         | string      | null: false  |
  | last_name_kana     | string      | null: false  |
  | first_name_kana    | string      | null: false  |
  | email              | string      | null: false  |
  | encrypted_password | string      | null: false  |
  | birthday           | datetime    | null: false  |

 ## items テーブル

  | Colum               | Type        | Options      |
  |
  | items_name          | string      | null: false  |
  | category_id         | string      | null: false  |
  | price_id            | integer     | null: false  |
  | seller_id           | references  | null: false  |
  | situation_id           | integer     | null: false  |
  | delivery charge     | string      | null: false  |
  | shipping_source_id  | references  |null: false   |
  | estimated_day       | string      | null: false  |

 ## ordersテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | orders           | references  | null: false  |
  | items_name       | references  | null: false  |

## Addressesテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | card_type        | string      | null: false  |
  | card_number      | string      | null: false  |
  | card_expirymonth | string      | null: false  |
  | card_expiryyear  | string      | null: false  |
  | card_cvc         | string      | null: false  |
  | postcode         | string      | null: false  |
  | prefecture_id    | string      | null: false  |
  | city             | string      | null: false  |
  | block            | string      | null: false  |
  | building         | string       null: false  |
  | phone_number     | string      | null: false  |
  

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
