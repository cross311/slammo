class SkatersController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  respond_to :json

  def index
    teamId = params['teamId']
    team = Team.find(teamId)
    
    respond_with team.skaters
  end
  
  def show
    skaterId = params[:id]
    skater = Skater.find(skaterId)
    
    respond_with skater
  end
end
