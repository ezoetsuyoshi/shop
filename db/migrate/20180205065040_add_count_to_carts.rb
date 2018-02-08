class AddCountToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :count, :integer
  end
end
