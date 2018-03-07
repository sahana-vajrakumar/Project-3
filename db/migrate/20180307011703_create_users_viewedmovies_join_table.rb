class CreateUsersViewedmoviesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :viewedmovies, :users do |t|
      # t.index [:Viewmovie_id, :user_id]
      # t.index [:user_id, :Viewmovie_id]
      t.index :viewedmovie_id
      t.index :user_id
    end
  end
end
