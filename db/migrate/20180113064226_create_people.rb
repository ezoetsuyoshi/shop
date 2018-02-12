class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :lastname
      t.string :firstname
      t.string :kana_lastname
      t.string :kana_firstname
      t.integer :postal_code
      t.string :address
      t.string :address2
      t.string :phone
      t.text :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
