class CreateFantasyTeamSkaters < ActiveRecord::Migration
  def change
    create_table :fantasy_team_skaters do |t|
      t.belongs_to :skater
      t.belongs_to :fantasy_manager
      
      t.timestamps
    end
  end
end
