class AddDateToViewedmovies < ActiveRecord::Migration[5.1]
  def change
    add_column :viewedmovies, :date, :date
  end
end
