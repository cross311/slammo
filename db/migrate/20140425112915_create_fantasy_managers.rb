class CreateFantasyManagers < ActiveRecord::Migration
  def change
    create_table :fantasy_managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :fantasy_team_name

      t.timestamps
    end
  end
end
