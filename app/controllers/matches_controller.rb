class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end
  
  def next
  	@nextMatch = Match.where("date > ?", Time.now).first
  end
  
  def last
  	@lastMatch = Match.where("date < ?", Time.now).last
  end
  
  def table
  	@teams = Team.order("points DESC").order("goalDiff DESC").order("goalsFor DESC")
  end
  
  def recent
  	@nextMatch = Match.where("date > ?", Time.now).first
  	@lastMatch = Match.where("date < ?", Time.now).last
  	@teams = Team.order("points DESC").order("goalDiff DESC").order("goalsFor DESC")
  end
end
