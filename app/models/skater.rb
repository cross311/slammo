class Skater < ActiveRecord::Base
  belongs_to :team
  has_many :fantasy_team_skaters
  has_many :fantasy_bout_roostered_skaters
  has_many :skater_bout_scores
  
end
