class AddPersonIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :person_id, :integer
  end
end
