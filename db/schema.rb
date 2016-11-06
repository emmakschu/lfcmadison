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

ActiveRecord::Schema.define(version: 20160817155838) do

  create_table "links", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "date"
    t.string   "opponent"
    t.string   "home"
    t.string   "away"
    t.string   "homeImg"
    t.string   "awayImg"
    t.string   "score"
    t.text     "homeGoals"
    t.text     "awayGoals"
    t.string   "competition"
    t.string   "stadium"
    t.string   "tv"
  end

  create_table "members", force: :cascade do |t|
    t.string  "firstName"
    t.string  "lastName"
    t.string  "email"
    t.string  "city"
    t.boolean "isLFCmember"
    t.integer "memNumber"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.text   "background"
    t.text   "lyrics"
    t.string "url"
  end

  create_table "teams", force: :cascade do |t|
    t.string  "team"
    t.integer "played"
    t.integer "won"
    t.integer "drawn"
    t.integer "lost"
    t.integer "points"
    t.integer "goalsFor"
    t.integer "goalsAgainst"
    t.integer "goalDiff"
  end

end
