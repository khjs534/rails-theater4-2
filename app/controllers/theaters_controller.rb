class TheatersController < ApplicationController
  before_action :find_theater, only: [:edit, :update,:show, :destroy]

  def index
    @theaters = Theater.all
  end

  def show
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new(theater_params)
    if @theater.save
      redirect_to @theater
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @theater.update_attributes(theater_params)
      redirect_to @theater
    else
      render 'edit'
    end
  end

  def destroy
    if @theater.destroy
      redirect_to root_path
    end
  end

  private

  def theater_params
    params.require(:theater).permit(:name)
  end

  def find_theater
    @theater = Theater.find(params[:id])
  end

end
