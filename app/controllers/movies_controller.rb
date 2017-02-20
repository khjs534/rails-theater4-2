class MoviesController < ApplicationController

  def index
    @movies = Movie.where(playing: true)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def update
    if @movie.update_attributes(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def destroy

    if @movie.destroy
      redirect_to root_path
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title)
  end

end
