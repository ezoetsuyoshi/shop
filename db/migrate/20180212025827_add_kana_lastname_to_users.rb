class AddKanaLastnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :kana_lastname, :string
  end
end
