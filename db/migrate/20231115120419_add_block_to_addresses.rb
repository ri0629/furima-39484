class AddBlockToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :block, :string
  end
end
