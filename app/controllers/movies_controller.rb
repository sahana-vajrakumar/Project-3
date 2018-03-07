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


end
