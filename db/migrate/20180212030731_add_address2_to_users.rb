class AddAddress2ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :address2, :string
  end
end
