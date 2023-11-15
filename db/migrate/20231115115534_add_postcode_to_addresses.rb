class AddPostcodeToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :postcode, :string
  end
end
