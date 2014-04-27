class TeamsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  respond_to :json

  def index
    teams = Team.all
    respond_with teams
  end
  
  def show
    teamId = params[:id]
    team = Team.find(teamId)
    
    respond_with team
  end
end
