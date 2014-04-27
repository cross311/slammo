class BoutsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  respond_to :json

  def index
    bouts = Bout.all
    respond_with bouts
  end
  
  def show
    boutId = params[:id]
    bout = Bout.find(boutId)
    
    respond_with bout
  end
end
