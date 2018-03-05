class CreateMoviesUsersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :movies, :users do |t|
      t.index :movie_id
      t.index :user_id
    end
  end
end
