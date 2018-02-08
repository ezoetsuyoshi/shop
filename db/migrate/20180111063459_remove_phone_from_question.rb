class RemovePhoneFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :phone, :integer
  end
end
