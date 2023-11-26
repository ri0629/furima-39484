class AddPrefectureToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :prefecture, :integer
  end
end
