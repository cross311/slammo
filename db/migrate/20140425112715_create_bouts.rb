class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      t.string :external_id
      t.datetime :bout_start
      t.datetime :rooster_close

      t.timestamps
    end
    
    create_table :bouts_teams, id:false do |t|
      t.belongs_to :bout
      t.belongs_to :team
    end
  end
end
