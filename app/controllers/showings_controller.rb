class ShowingsController < ApplicationController
  def show
    @showing = Showing.find(params[:id])
    @sale = Sale.new
  end

  def new
    @showing = Showing.new
  end

  def create

  end
end
