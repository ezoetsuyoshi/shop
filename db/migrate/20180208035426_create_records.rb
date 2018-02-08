class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :delivery_id
      t.integer :price

      t.timestamps
    end
  end
end
