class MoviePoster < ApplicationRecord

  def self.get_poster_path_cached( id )
    m = MoviePoster.find_by tmdb_id: id
    if m
      puts "=" * 80
      puts "FOUND IN DB: #{ id }"
      p m
      return m.poster_path
    end

    # fallback to API request, but save results in our DB
    movie = HTTParty.get("https://api.themoviedb.org/3/movie/#{ id }?api_key=fa4617d76537ac386ebb1909138783d4")
    puts "API FALLBACK FOR #{ id }:"

    if movie && movie['poster_path']
      puts movie['poster_path']
      puts movie['overview']
      # binding.pry
      MoviePoster.create tmdb_id: id, poster_path: movie['poster_path'], overview: movie['overview']  
      return movie['poster_path']
    end

    puts "******** MOVIE NOT FOUND IN TMDB (#{ id })"
  end

end
