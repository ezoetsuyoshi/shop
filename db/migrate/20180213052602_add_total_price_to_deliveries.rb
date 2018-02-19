class AddTotalPriceToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_column :deliveries, :total_price, :integer
  end
end
