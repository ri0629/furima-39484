class AddInformationIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :information_id, :integer
  end
end
