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

ActiveRecord::Schema.define(version: 20150422172721) do

  create_table "pitcher_stats", force: :cascade do |t|
    t.integer  "w"
    t.integer  "l"
    t.integer  "sv"
    t.integer  "g"
    t.integer  "gs"
    t.decimal  "ip"
    t.decimal  "k"
    t.decimal  "bb"
    t.decimal  "hr"
    t.decimal  "babip"
    t.decimal  "lob"
    t.decimal  "gb"
    t.decimal  "hrfb"
    t.decimal  "era"
    t.decimal  "fip"
    t.decimal  "xfip"
    t.decimal  "war"
    t.integer  "pitcher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pitcher_stats", ["pitcher_id"], name: "index_pitcher_stats_on_pitcher_id"

  create_table "pitchers", force: :cascade do |t|
    t.string   "name"
    t.integer  "fangraphs_id"
    t.integer  "team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pitchers", ["team_id"], name: "index_pitchers_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
