class AddBuildingToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :building, :string
  end
end
