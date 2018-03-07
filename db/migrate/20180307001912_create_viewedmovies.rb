class CreateViewedmovies < ActiveRecord::Migration[5.1]
  def change
    create_table :viewedmovies do |t|
      t.text :name
      t.integer :year
      t.integer :traktid

      t.timestamps
    end
  end
end
