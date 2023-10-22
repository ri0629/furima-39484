class AddEmailToUsers < ActiveRecord::Migration[7.0]
  def change
    add_colum :users, :email, :string
  end
end
