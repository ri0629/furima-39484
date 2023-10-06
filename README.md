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
  | password | string   | null: false  |
  | birthday | string   | null: false  |

 ## items テーブル

  | Colum       | Type        | Options      |
  |
  | items name  | string      | null: false  |
  | Category    | string      | null: false  |
  | Price       | string      | null: false  |
  | Seller      | references  | null: false  |
  | Situation   | string      | null: false  |
  | images      | string      | null: false  |

 ## ordersテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | Buyer            | references   null: false   |
  | Delivery charge  | string      | null: false  |
  | shipping source  | string      | null: false  |
  | Estimated day    | string      | null: false  |

## Addressテーブル

  | Colum            | Type        | Options      |
  |                  |             |              |
  | shipping source  | references  |null: false   |
  | buyer address    | references  | null: false  |


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
