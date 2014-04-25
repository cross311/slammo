class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.string :external_id
      t.string :derby_name
      t.string :number
      t.belongs_to :team

      t.timestamps
    end
  end
end
