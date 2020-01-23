# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_21_135729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string "award_ceremony"
    t.string "category"
    t.bigint "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_awards_on_show_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commnt"
    t.bigint "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_comments_on_show_id"
  end

  create_table "nominees", force: :cascade do |t|
    t.string "name"
    t.boolean "recipient"
    t.bigint "award_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["award_id"], name: "index_nominees_on_award_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "show_type"
    t.string "opening_date"
    t.string "closing_date"
    t.integer "performances"
    t.integer "likes"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "awards", "shows"
  add_foreign_key "comments", "shows"
  add_foreign_key "nominees", "awards"
end
