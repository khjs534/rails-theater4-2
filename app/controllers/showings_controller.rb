class ShowingsController < ApplicationController
  before_action :find_showing, only: [:edit, :update,:show, :destroy]
  def show
    @sale = Sale.new
  end

  def new
    @showing = Showing.new
  end

  def create
    @movie = Movie.find(params[:showing][:movie_id])
    @showing = Showing.new(showing_params)
    if @showing.save
      redirect_to movie_path(@movie)
    else
      render 'new'
    end
  end

  def update
    if @showing.update_attributes(theater_params)
      redirect_to @showing
    else
      render 'edit'
    end
  end

  def destroy
    if @showing.destroy
      redirect_to root_path
    end
  end

  private

  def showing_params
    params.require(:showing).permit(:time, :movie_id, :auditorium_id)
  end

  def find_showing
    @showing = Showing.find(params[:id])
  end
end
