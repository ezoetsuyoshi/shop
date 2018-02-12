class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.string :lastname
      t.string :firstname
      t.string :kana_lastname
      t.string :kana_firstname
      t.integer :postal_code
      t.string :address2
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
