class CreateMoviePosters < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_posters do |t|
      t.integer :tmdb_id
      t.text :poster_path
      t.timestamps  
    end
  end
end
