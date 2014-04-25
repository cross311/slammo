class FantasyBoutScore < ActiveRecord::Base
  belongs_to :fantasy_manager
  belongs_to :bout
end
