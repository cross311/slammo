class CreateFantasyBoutScores < ActiveRecord::Migration
  def change
    create_table :fantasy_bout_scores do |t|
      t.integer :score
      t.belongs_to :fantasy_manager
      t.belongs_to :bout

      t.timestamps
    end
  end
end
