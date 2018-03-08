class MoviesController < ApplicationController

  before_action :check_if_logged_in, only: [:create]

  def index
    @movie = Movie.all
  end


  def new
  end

  def create
    # binding.pry

    m = Movie.create_with(name: params[:name], year: params[:year], image: params[:image]).find_or_create_by(traktid: params[:traktid])
    # m = Movie.find_or_create_by
    @current_user.movies << m

    # movie = Movie.create name: params[:name], year: params[:year] #, user: @current_user

    render json: { }, status: :ok
  end

  def show

    @movieshow = HTTParty.get("https://api.trakt.tv/search/trakt/#{ params[:id] }", {
            method: "GET",
            headers: {
              "Accept": 'application/json',
              "Content-Type": "application/json",
              "trakt-api-version": "2",
              "trakt-api-key": "c1aa5a18c171bf2e33dd5185d5f22d99fc01efa0b5303b1f4806a17160cee4cf"
            }
          })
          # raise 'hell'

          # watch_urls = HTTParty.get("https://trakt.tv/movies/#{@movieshow[0]['movie']['ids']['slug']}/streaming_links")
          # doc = Nokogiri::HTML.parse(watch_urls)
          # @links_array = []
          # @name_array = []
          # doc.css('a').each do |a|
          #   puts "="*80
          #   p a
          #   # puts a
          #   # puts a['href'] if a['href'].start_with? '/watchnow'
          #   temp = a['href'] if a['href'].start_with? '/watchnow'
          #   temp_name = a['data-source']
          #
          #
          #   @links_array.push(temp)
          #   @name_array.push(temp_name)
          #   puts @links_array
          #
          # end


  end


end
