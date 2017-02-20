class SalesController < ApplicationController
  before_action :find_sale, only: [:edit, :update, :show, :destroy]

  def index
    @sales = Sale.all
  end

  def show
  end

  def new
    @sale = Sale.new
  end

  def create
    @showing = Showing.find([params[:showing_id]])
    @sale = Sale.new(sale_params)
    respond_to do|format|
      if @sale.save
        SalesMailer.confirmation_email(@sale).deliver_now
        format.html { redirect_to showing_path(@showing), notice: 'You just bought a ticket!' }
        format.json {render json: @sale, status: :created, location: @sale}
      else
        format.html {redirect_to showing_path(@showing), notice: "Your order could not be processed, please try again"}
        format.json {render json: @sale.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    if @sale.update_attributes(sale_params)
      redirect_to @sale
    else
      render 'edit'
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:customer_name, :customer_email, :showing_id)
  end

  def find_sale
    @sale = Sale.find(params[:id])
  end
end
