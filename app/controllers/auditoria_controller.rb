class AuditoriaController < ApplicationController
  before_action :find_auditorium, only: [:edit, :update, :destroy]

  def new
    @theater = Theater.find(params[:theater_id])
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.new(auditorium_params)
    @theater = Theater.find(params[:theater_id])
    if @auditorium.save
      redirect_to theater_path(@theater)
    else
      render 'new'
    end
  end

  def edit
    @theater = Theater.find(params[:theater_id])
  end

  def update
    if @auditorium.update_attributes(auditorium_params)
      redirect_to @auditorium.theater
    else
      render 'edit'
    end
  end

  def destroy
    if @auditorium.destroy
      redirect_to root_path
    end
  end

  private

  def auditorium_params
    params.require(:auditorium).permit(:auditorium_number, :seating_capacity, :theater_id)
  end

  def find_auditorium
    @auditorium = Auditorium.find(params[:id])
  end
end
