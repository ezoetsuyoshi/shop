class AddKanaFirstnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :kana_firstname, :string
  end
end
