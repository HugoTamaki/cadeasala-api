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

ActiveRecord::Schema.define(version: 20170225181740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_disciplines", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "discipline_id"
    t.integer  "location_id"
    t.string   "ap1_local"
    t.datetime "ap1_date"
    t.string   "ap2_local"
    t.datetime "ap2_date"
    t.string   "ap3_local"
    t.datetime "ap3_date"
    t.date     "ad1_deadline"
    t.date     "ad2_deadline"
    t.string   "presencial_tutor"
    t.string   "tutorship_weekday"
    t.string   "tutorship_time"
    t.string   "tutorship_room"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
  end

  create_table "location_courses", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "course_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
