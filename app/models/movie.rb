class Movie < ApplicationRecord
has_and_belongs_to_many :users

  def get_fav
    # Movie.create name: movie["movie"]["title"]
  end
end
