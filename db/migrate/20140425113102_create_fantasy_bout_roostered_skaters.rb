class CreateFantasyBoutRoosteredSkaters < ActiveRecord::Migration
  def change
    create_table :fantasy_bout_roostered_skaters do |t|
      t.string :position

      t.timestamps
    end
  end
end
