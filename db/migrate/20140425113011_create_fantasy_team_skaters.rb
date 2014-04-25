class CreateFantasyTeamSkaters < ActiveRecord::Migration
  def change
    create_table :fantasy_team_skaters do |t|

      t.timestamps
    end
  end
end
