class AddChargeIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :charge_id, :integer
  end
end
