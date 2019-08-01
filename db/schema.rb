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

ActiveRecord::Schema.define(version: 2019_08_01_013019) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.float "weight"
    t.string "nationality"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.date "foundation"
    t.string "president"
    t.string "coach"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trajectories", force: :cascade do |t|
    t.date "debut"
    t.integer "player_id"
    t.integer "team_id"
    t.string "position"
    t.date "lastdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_trajectories_on_player_id"
    t.index ["team_id"], name: "index_trajectories_on_team_id"
  end

end
