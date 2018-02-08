class RemoveUserIdFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :user_id, :integer
  end
end
