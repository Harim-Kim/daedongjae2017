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

ActiveRecord::Schema.define(version: 20170522111729) do

  create_table "backs", force: :cascade do |t|
    t.string   "img_name"
    t.string   "intro"
    t.string   "unit"
    t.string   "name"
    t.string   "day"
    t.string   "location"
    t.string   "host"
    t.string   "img_url",    default: "3.png"
    t.integer  "like",       default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "jujeomreplies", force: :cascade do |t|
    t.text     "content"
    t.string   "nickname"
    t.integer  "jujeom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jujeoms", force: :cascade do |t|
    t.string   "img_name"
    t.string   "intro"
    t.string   "unit"
    t.string   "name"
    t.string   "day"
    t.string   "location"
    t.string   "host"
    t.string   "img_url",    default: "3.png"
    t.integer  "like",       default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "performdaes", force: :cascade do |t|
    t.string   "start"
    t.string   "end"
    t.string   "name"
    t.string   "intro"
    t.string   "date"
    t.string   "img_url"
    t.integer  "like",       default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "performjungs", force: :cascade do |t|
    t.string   "start"
    t.string   "end"
    t.string   "name"
    t.string   "intro"
    t.string   "date"
    t.string   "img_url",    default: "3.png"
    t.integer  "like",       default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
