class AddNameToMovie < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :name, :text
  end
end
