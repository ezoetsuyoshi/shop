class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
	  t.string :name
	  t.string :mail
	  t.integer :phone
	  t.text :content
      t.timestamps
    end
  end
end
