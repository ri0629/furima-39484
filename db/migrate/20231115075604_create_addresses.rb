class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :postcode
      t.integer :prefecture_id
      t.string :city
      t.string :block
      t.string :building
      t.string :phone_number
      t.references :orders




      t.timestamps
    end
  end
end
