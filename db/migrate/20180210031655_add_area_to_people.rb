class AddAreaToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :area, :string
  end
end
