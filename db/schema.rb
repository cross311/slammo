# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140425113138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bouts", force: true do |t|
    t.string   "external_id"
    t.datetime "bout_start"
    t.datetime "rooster_close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_bout_roostered_skaters", force: true do |t|
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_bout_scores", force: true do |t|
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_managers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fantasy_team_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_team_skaters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skater_bout_scores", force: true do |t|
    t.integer  "jammer_points_scored"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skaters", force: true do |t|
    t.string   "external_id"
    t.string   "derby_name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "external_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
