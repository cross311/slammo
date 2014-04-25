class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      t.string :external_id
      t.datetime :bout_start
      t.datetime :rooster_close

      t.timestamps
    end
  end
end
