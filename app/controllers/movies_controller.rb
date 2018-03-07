class MoviesController < ApplicationController

  before_action :check_if_logged_in, only: [:create]


  def new
  end

  def create

    m = Movie.create_with(name: params[:name], year: params[:year]).find_or_create_by(traktid: params[:traktid])
    # m = Movie.find_or_create_by

    @current_user.movies << m

    # movie = Movie.create name: params[:name], year: params[:year] #, user: @current_user

    render json: { }, status: :ok
  end


end
