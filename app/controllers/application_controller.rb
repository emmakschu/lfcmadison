class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # @nextMatch = Match.where(date = "2016-08-06 11:00:00")

end
