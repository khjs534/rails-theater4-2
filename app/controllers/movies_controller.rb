class MoviesController < ApplicationController

  def index
    @movies = Movie.where(playing: true)
  end

  def show

  end

end
