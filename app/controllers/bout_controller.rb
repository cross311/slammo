class BoutController < ApplicationController
  def next
    render :json => {'team1' => 'Bronx', 'team2' => 'Brooklyn'}
  end
end
