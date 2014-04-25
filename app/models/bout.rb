class Bout < ActiveRecord::Base
  has_many :fantasy_bout_roostered_skaters
  has_many :fantasy_bout_scores
  has_many :skater_bout_scores
  has_and_belongs_to_many :teams, -> { order("created_at ASC").limit(2) }, before_add: :check_only_two_teams
  
  def check_only_two_teams(new_team)
    already_has_two_or_more_teams = teams.size >= 2
    throw new Exception("Bout already has two teams. Cannot add team #{new_team.name}") if already_has_two_or_more_teams
  end
  
end
