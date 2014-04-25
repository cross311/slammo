class CreateSkaterBoutScores < ActiveRecord::Migration
  def change
    create_table :skater_bout_scores do |t|
      t.integer :jammer_points_scored

      t.timestamps
    end
  end
end
