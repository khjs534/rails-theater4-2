class TheatersController < ApplicationController

  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find(params[:id])
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

  def update
    if @theater.update_attributes(theater_params)
      redirect to @theater
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

end
