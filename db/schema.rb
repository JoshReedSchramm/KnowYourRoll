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

ActiveRecord::Schema.define(version: 20141018203401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attribute_groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sequence",    default: 0
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_attributes", force: true do |t|
    t.integer  "character_id"
    t.integer  "game_attribute_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "characters", force: true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "game_attributes", force: true do |t|
    t.string  "name"
    t.string  "abbreviation"
    t.string  "type"
    t.integer "min_number"
    t.integer "max_number"
    t.text    "description"
    t.integer "group_sequence",         default: 0
    t.integer "attribute_group_id"
    t.integer "sequence",               default: 0
    t.integer "parent_id"
    t.integer "game_id"
    t.boolean "multi_line",             default: false
    t.boolean "allows_multiple_values", default: false
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "game_system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gm_code"
    t.integer  "creator_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
