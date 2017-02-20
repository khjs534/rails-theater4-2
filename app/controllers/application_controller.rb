class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper Sessionable
  include Sessionable
end
