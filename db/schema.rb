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

ActiveRecord::Schema.define(version: 20141019220932) do

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

  create_table "game_attribute_rules", force: true do |t|
    t.integer  "game_rule_id"
    t.string   "name"
    t.string   "description"
    t.string   "rule_function"
    t.integer  "affecting_game_attribute_id"
    t.string   "affected_game_attribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lookup_table_id"
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
    t.boolean "container",              default: true
  end

  create_table "game_rules", force: true do |t|
    t.integer  "game_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "lookup_tables", force: true do |t|
    t.integer  "game_rule_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_values", force: true do |t|
    t.integer  "lookup_table_id"
    t.string   "input_key"
    t.string   "output_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
