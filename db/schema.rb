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

ActiveRecord::Schema.define(version: 20180330103853) do

  create_table "behavior_condition", force: :cascade do |t|
    t.integer "behavior_id"
    t.integer "condition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "behaviors", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "condition_id"
    t.index ["condition_id"], name: "index_behaviors_on_condition_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "behavior_id"
    t.index ["behavior_id"], name: "index_conditions_on_behavior_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_insurances_on_user_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.integer "dose"
    t.string "prescribed"
    t.datetime "first_dose"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_medications_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "first_visit"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
