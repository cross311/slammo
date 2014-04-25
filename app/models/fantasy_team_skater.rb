class FantasyTeamSkater < ActiveRecord::Base
  belongs_to :skater
  belongs_to :fantasy_manager
  
end
