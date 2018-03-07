class ViewedmoviesController < ApplicationController
  before_action :check_if_logged_in, only: [:create]

  def index
    @viewedmovie = Viewedmovie.all
  end

  def new
  end

  def create

    v = Viewedmovie.create_with(name: params[:name], year: params[:year], image: params[:image]).find_or_create_by(traktid: params[:traktid])


    @current_user.viewedmovies << v



    render json: { }, status: :ok
  end

end
