class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
	  t.string :lastname
      t.string :firstname
      t.string :kana_lastname
      t.string :kana_firstname
	  t.string :mail
	  t.integer :phone
	  t.text :content
      t.timestamps
    end
  end
end
