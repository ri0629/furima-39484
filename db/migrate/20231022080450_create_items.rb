class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item, null: false
      t.integer :category_id, null: false
      t.integer :price,  null: false
      t.references :user, null: false, foreign_key: true
      t.integer :information_id, null: false
      t.integer :charge_id, null: false
      t.integer :prefecture_id, null: false
      t.integer :estimated_day_id, null: false
      t.text :description: null: false

      




      t.timestamps
    end
  end
end
