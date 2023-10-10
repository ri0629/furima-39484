class AddEncryptedPasseordToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :encrypted_passeord, :string
  end
end
