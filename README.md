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
  | last_name          | string      | null:false                               
  | first_name         | string      | null: false  |
  | last_name_kana     | string      | null: false  |
  | first_name_kana    | string      | null: false  |
  | nick_name          | string      | null: false  |
  | email              | string      | null: false, unique: true |
  | encrypted_password | string      | null: false  |
  | birthday           | date        | null: false  |

  - has_many :items
  - has_many :order

 ## items テーブル

  | Colum               | Type        | Options      |
  |
  | item                | string      | null: false  |
  | category_id         | integer     | null: false  |
  | price               | integer     | null: false  |
  | user                | references  | null: false ,   foreign_key: true |
  | information_id        | integer     | null: false  |
  | charge_id           | integer     | null: false  |
  | prefecture_id       | integer     | null: false  |
  | estimated_day_id    | integer     | null: false  |
  | description         | text        | null: false  |

  - belongs_to :user
  - has_one :order

 ## ordersテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | user             | references  | null: false ,foreign_key: true |
  | item             | references  | null: false ,foreign_key: true |

  - belongs_to :user
  - belongs_to :item
  - has_one :address

## Addressesテーブル

  | Colum            | Type        | Options      |
  |                  |             |              | 
  | postcode         | string      | null: false  |
  | prefecture_id    | integer     | null: false  |
  | city             | string      | null: false  |
  | block            | string      | null: false  |
  | building         | string      |              |
  | phone_number     | string      | null: false  |
  | order            | references  | null: false  |

  - belongs_to :order

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
