class AddUserIdToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :user_id, :integer
  end
end
