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

ActiveRecord::Schema.define(version: 20171204193101) do

  create_table "consumable_item_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_consumable_item_types_on_name", unique: true
  end

  create_table "consumable_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "consumable_item_type_id"
    t.string "name"
    t.integer "approx_calories"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consumable_item_type_id"], name: "index_consumable_items_on_consumable_item_type_id"
    t.index ["name"], name: "index_consumable_items_on_name", unique: true
  end

  create_table "symptom_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_symptom_types_on_name", unique: true
  end

  create_table "symptoms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "symptom_type_id"
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_symptoms_on_name", unique: true
    t.index ["symptom_type_id"], name: "index_symptoms_on_symptom_type_id"
  end

  add_foreign_key "consumable_items", "consumable_item_types"
  add_foreign_key "symptoms", "symptom_types"
end
