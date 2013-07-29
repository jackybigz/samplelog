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

ActiveRecord::Schema.define(version: 20130726112216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
