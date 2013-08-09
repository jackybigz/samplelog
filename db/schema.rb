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

ActiveRecord::Schema.define(version: 20130809081821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.date     "request_date"
    t.string   "request_smd_number"
    t.string   "request_brief_description"
    t.text     "request_description"
    t.string   "request_supplier"
    t.string   "request_colours"
    t.date     "request_date_required"
    t.string   "request_required_for"
    t.text     "request_comments"
    t.date     "request_confirmed_comp_date"
    t.string   "request_received"
    t.date     "request_received_date"
    t.date     "request_date_sent"
    t.string   "request_tracking_number"
    t.date     "request_confirmed_comp_date2"
    t.date     "request_confirmed_comp_date3"
    t.date     "request_confirmed_comp_date4"
    t.date     "request_confirmed_comp_date5"
    t.date     "request_confirmed_comp_date6"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "request_designer"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "sample_image_file_name"
    t.string   "sample_image_content_type"
    t.integer  "sample_image_file_size"
    t.datetime "sample_image_updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

end
