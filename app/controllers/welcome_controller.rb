class WelcomeController < ApplicationController
  
  
  def index
    @nextMatch = Match.where("date > ?", Time.now).order(date: :asc).first
  end
end
