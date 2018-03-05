class MoviesController < ApplicationController



def index

@results = HTTParty.get("https://api.trakt.tv/movies/trending", {
        method: "GET",
        headers: {
          "Accept": 'application/json',
          "Content-Type": "application/json",
          "trakt-api-version": "2",
          "trakt-api-key": "c1aa5a18c171bf2e33dd5185d5f22d99fc01efa0b5303b1f4806a17160cee4cf"
        }
      })

  end







end
