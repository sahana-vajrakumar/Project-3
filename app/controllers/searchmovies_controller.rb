class SearchmoviesController < ApplicationController

  def form
    @most_watched_movie = HTTParty.get("https://api.trakt.tv/movies/watched/weekly", {
            method: "GET",
            headers: {
              "Accept": 'application/json',
              "Content-Type": "application/json",
              "trakt-api-version": "2",
              "trakt-api-key": "c1aa5a18c171bf2e33dd5185d5f22d99fc01efa0b5303b1f4806a17160cee4cf"
            }
          })




  end


  # https://api.themoviedb.org/3/movie/332175?api_key=fa4617d76537ac386ebb1909138783d4

  def lookup
  # raise 'hell'

    @movieresults = HTTParty.get("https://api.trakt.tv/search/movie?query=#{ params[:text_query] }", {
            method: "GET",
            headers: {
              "Accept": 'application/json',
              "Content-Type": "application/json",
              "trakt-api-version": "2",
              "trakt-api-key": "c1aa5a18c171bf2e33dd5185d5f22d99fc01efa0b5303b1f4806a17160cee4cf"
            }
          })

    # @movieresults.each do |m|
    #   binding.pry
    #   poster_path = MoviePoster.get_poster_path_cached( m['movie']['ids']['tmdb'] )
    #   m['poster_url'] = "https://image.tmdb.org/t/p/w500/#{ poster_path }"
    # end

  end

end
