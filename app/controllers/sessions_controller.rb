class SessionsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.find_by(username: params[:sessions][:username])
    if @admin && @admin.authenticate(params[:sessions][:password])
        session[:admin_id] = @admin.id
        redirect_to root_path
    else
      @errors = ["Invalid login info"]
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end
end
