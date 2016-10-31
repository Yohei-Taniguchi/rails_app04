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

ActiveRecord::Schema.define(version: 20161031074852) do

  create_table "item_designs", force: :cascade do |t|
    t.string   "item_cd"
    t.string   "yarn"
    t.float    "strech_rate"
    t.float    "ori_mr"
    t.integer  "plan_width"
    t.integer  "plan_repeart"
    t.integer  "special_width"
    t.integer  "special_repeart"
    t.integer  "repeart_count"
    t.string   "process_type"
    t.text     "remarks"
    t.integer  "lace_design_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "lace_designs", force: :cascade do |t|
    t.string   "lace_design_no"
    t.string   "use"
    t.string   "lace_type"
    t.string   "rs"
    t.integer  "carry"
    t.float    "point"
    t.string   "nominal_width"
    t.float    "fin_mr"
    t.string   "mc_type"
    t.integer  "honsu"
    t.boolean  "sherring"
    t.boolean  "halfcut"
    t.string   "skecher"
    t.string   "design_code"
    t.string   "design_no"
    t.string   "drafman"
    t.text     "remarks"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
