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

ActiveRecord::Schema.define(version: 2018_09_15_224438) do

  create_table "goals", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.integer "user_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer "studypage"
    t.string "studyimage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.string "image6"
    t.string "image7"
    t.string "image8"
    t.string "image9"
    t.string "image10"
    t.string "image11"
    t.string "image12"
    t.string "image13"
    t.string "image14"
    t.string "image15"
    t.string "image16"
    t.string "image17"
    t.string "image18"
    t.string "image19"
    t.string "image20"
    t.string "day"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
