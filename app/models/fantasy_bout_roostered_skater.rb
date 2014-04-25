class FantasyBoutRoosteredSkater < ActiveRecord::Base
  belongs_to :fantasy_manager
  belongs_to :bout
  belongs_to :skater
  
end
