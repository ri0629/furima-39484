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
  | last_name          | string      |null:false                               
  | first_name         | string      | null: false  |
  | last_name_kana     | string      | null: false  |
  | first_name_kana    | string      | null: false  |
  | nick_name          | string      | null: false  |
  | email              | string      | unique_true  |
  | encrypted_password | string      | null: false  |
  | birthday           | date        | null: false  |

  - has_many :item
  - has_many :orders

 ## items テーブル

  | Colum               | Type        | Options      |
  |
  | item_name_id        | string      | null: false  |
  | category_id         | string      | null: false  |
  | price               | integer     | null: false  |
  | seller_id           | references  | null: false  |
  | situation_id        | integer     | null: false  |
  | delivery charge     | string      | null: false  |
  | shipping_source_id  | references  |null: false   |
  | estimated_day       | string      | null: false  |

  - belongs_to :user
  - has_one :order

 ## ordersテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | user           | references  | null: false ,foreign_key: true |
  | item_name        | references  | null: false ,foreign_key: true |

  - belongs_to :user
  - belongs_to :item

## Addressesテーブル

  | Colum            | Type        | Options      |
  |                  |             |              | 
  | postcode         | string      | null: false  |
  | prefecture_id    | string      | null: false  |
  | city             | string      | null: false  |
  | block            | string      | null: false  |
  | building         | string      | null: false  |
  | phone_number     | string      | null: false  |
  | purchase_history | string      | null: false , foreign_key: true |

  - belongs_to :order

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
