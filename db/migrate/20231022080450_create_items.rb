class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item
      t.integer :category_id
      t.integer :price
      t.references :user
      t.integer :situation_id
      t.integer :delivery_charge_id
      t.integer :prefecture_id
      t.integer :estimated_day_id
      t.text :description

      




      t.timestamps
    end
  end
end
