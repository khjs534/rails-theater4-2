class ShowingsController < ApplicationController
  def show
    @showing = Showing.find(params[:id])
    @sale = Sale.new
  end
end
