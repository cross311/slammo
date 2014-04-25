class CreateFantasyBoutRoosteredSkaters < ActiveRecord::Migration
  def change
    create_table :fantasy_bout_roostered_skaters do |t|
      t.string :position
      t.belongs_to :skater
      t.belongs_to :bout
      t.belongs_to :fantasy_manager

      t.timestamps
    end
  end
end
