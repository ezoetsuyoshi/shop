class AddCountToRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :count, :integer
  end
end
