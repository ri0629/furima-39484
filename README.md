# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation


 ## users テーブル

  | Colum    | Type     | Options      |
  |                                    
  | name     | string   | null: false  |
  | email    | string   | null: false  |
  | encrypted_password | string   | null: false  |
  | birthday | string   | null: false  |
  | adress   | string   | null: false  |

 ## items テーブル

  | Colum            | Type        | Options      |
  |
  | items_name       | string      | null: false  |
  | category         | string      | null: false  |
  | price_id         | integer     | null: false  |
  | seller           | references  | null: false  |
  | situation        | integer     | null: false  |
  | delivery charge  | string      | null: false  |
  | shipping_ source | references  |null: false   |
  | estimated_day    | string      | null: false  |

 ## ordersテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | buyer            | references  | null: false  |
  | items_name       | references  | null: false  |

## Addressテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | buyer_address    | references  | null: false  |
  | seller_address   | references  | null:false   |

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
