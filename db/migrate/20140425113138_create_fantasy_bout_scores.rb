class CreateFantasyBoutScores < ActiveRecord::Migration
  def change
    create_table :fantasy_bout_scores do |t|
      t.integer :score

      t.timestamps
    end
  end
end
