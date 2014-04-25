class Bout < ActiveRecord::Base
  has_many :fantasy_bout_roostered_skaters
  has_many :fantasy_bout_scores
  has_many :skater_bout_scores
  has_and_belongs_to_many :teams, -> { order("created_at ASC").limit(2) }
  
end
