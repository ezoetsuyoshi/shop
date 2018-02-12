class AddIntroduction2ToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :introduction2, :text
  end
end
