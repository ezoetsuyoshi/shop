class AddActiveToRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :active, :integer, default: 0
  end
end
