class AddNameToShow < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :name, :text
  end
end
