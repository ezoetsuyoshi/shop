class AddCountToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :count, :integer
  end
end
