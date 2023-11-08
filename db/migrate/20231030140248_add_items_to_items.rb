class AddItemsToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :items, :string
  end
end
