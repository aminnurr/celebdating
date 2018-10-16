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

ActiveRecord::Schema.define(version: 2018_10_08_170900) do

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "title_romaji"
    t.string "title_English"
    t.string "also_known_as"
    t.string "genre"
    t.string "episodes"
    t.string "format"
    t.string "broadcast_network"
    t.string "broadcast_period"
    t.string "air_time"
    t.string "viewrship_rating"
    t.string "theme_song"
    t.string "broadcast_year"
    t.string "tagline"
    t.string "cantonese_mandarin_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "full_name"
    t.string "stage_name"
    t.string "romanji_name"
    t.string "proffession"
    t.string "date_of_birth"
    t.string "birthplace"
    t.string "height"
    t.string "weight"
    t.string "star_sign"
    t.string "bloodtype"
    t.string "talent_agency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
