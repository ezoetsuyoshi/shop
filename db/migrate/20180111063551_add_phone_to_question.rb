class AddPhoneToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :phone, :string
  end
end
