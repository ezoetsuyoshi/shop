class RemoveCountFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :count, :integer
  end
end
