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

ActiveRecord::Schema.define(version: 2019_07_22_152150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drafted_teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "league_id"
    t.string "team_name"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
  end

  create_table "drafts", force: :cascade do |t|
    t.integer "drafted_team_id"
    t.integer "player_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
  end

  create_table "matchups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "opponent_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "ign"
    t.string "full_name"
    t.string "team"
    t.string "position"
    t.string "img_url"
  end

  create_table "stats", force: :cascade do |t|
    t.string "ign"
    t.string "team"
    t.string "position"
    t.float "total_points"
    t.float "average_points"
    t.integer "games_played"
    t.integer "kills"
    t.integer "deaths"
    t.integer "assists"
    t.integer "creep_score"
    t.integer "kill_assist_bonus"
    t.string "gold_bonus"
    t.string "week"
    t.integer "player_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
