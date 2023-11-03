class RemoveItemsFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :items
  end
end
