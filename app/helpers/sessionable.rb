
module Sessionable
  def logged_in?
    session[:admin_id] != nil
  end

  def current_user
    @current_user ||= Admin.find(session[:admin_id]) if logged_in?
  end
end
