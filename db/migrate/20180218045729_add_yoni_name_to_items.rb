class AddYoniNameToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :yomi_name, :string
  end
end
