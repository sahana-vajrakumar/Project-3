class AddOverviewToMoviePosters < ActiveRecord::Migration[5.1]
  def change
    add_column :movie_posters, :overview, :text
  end
end
