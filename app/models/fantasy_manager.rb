class FantasyManager < ActiveRecord::Base
  has_many :fantasy_bout_roostered_skaters
  has_many :fantasy_team_skaters
  has_many :skaters, through: :fantasy_team_skaters
end
