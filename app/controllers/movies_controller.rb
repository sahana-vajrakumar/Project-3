class MoviesController < ApplicationController
  def new
    # binding.pry
    # movie = Movie.new
    # movie.name =
    # movie.save
    # movie
  end

  def create
    raise 'hell'
    movie = Movie.create movie_params
  end



private

def movie_params
  params.permit(:name)

end

end
