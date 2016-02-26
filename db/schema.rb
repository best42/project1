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

ActiveRecord::Schema.define(version: 20160226022316) do

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "subject"
    t.text     "teacher"
    t.integer  "rating"
    t.text     "owner"
    t.date     "create_note"
    t.text     "image_note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poi_note_infos", force: :cascade do |t|
    t.integer  "note_id"
    t.text     "description_detail"
    t.integer  "poi_info_id"
    t.string   "poi_info_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "poi_note_infos", ["note_id"], name: "index_poi_note_infos_on_note_id"
  add_index "poi_note_infos", ["poi_info_id"], name: "index_poi_note_infos_on_poi_info_id"
  add_index "poi_note_infos", ["poi_info_type"], name: "index_poi_note_infos_on_poi_info_type"

end
