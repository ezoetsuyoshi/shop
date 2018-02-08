class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
