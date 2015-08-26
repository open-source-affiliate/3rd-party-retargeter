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

ActiveRecord::Schema.define(version: 20150825193120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "redirects", force: :cascade do |t|
    t.string   "name",                           null: false
    t.text     "url",                            null: false
    t.string   "facebook_pixel_id"
    t.string   "perfect_audience_advertiser_id"
    t.string   "adroll_advertiser_id"
    t.string   "adroll_pixel_id"
    t.text     "other_js"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "redirects", ["adroll_advertiser_id"], name: "index_redirects_on_adroll_advertiser_id", using: :btree
  add_index "redirects", ["adroll_pixel_id"], name: "index_redirects_on_adroll_pixel_id", using: :btree
  add_index "redirects", ["facebook_pixel_id"], name: "index_redirects_on_facebook_pixel_id", using: :btree
  add_index "redirects", ["perfect_audience_advertiser_id"], name: "index_redirects_on_perfect_audience_advertiser_id", using: :btree

end
