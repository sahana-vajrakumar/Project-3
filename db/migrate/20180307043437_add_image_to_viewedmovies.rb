class AddImageToViewedmovies < ActiveRecord::Migration[5.1]
  def change
    add_column :viewedmovies, :image, :text
  end
end
