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

ActiveRecord::Schema.define(version: 20140917121515) do

  create_table "budget_lines", force: true do |t|
    t.integer  "season_id"
    t.string   "budget_line_type"
    t.string   "budget_line_subtype"
    t.integer  "member_id"
    t.string   "budget_line_item_name"
    t.float    "budgeted_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "budget_lines", ["season_id"], name: "index_budget_lines_on_season_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "youth_flag",  default: false
    t.string   "email"
    t.string   "phone"
    t.boolean  "active_flag", default: false
    t.boolean  "delete_flag", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.string   "season_name"
    t.boolean  "active",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
