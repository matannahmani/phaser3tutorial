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

ActiveRecord::Schema.define(version: 2020_03_08_173607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "structures", force: :cascade do |t|
    t.integer "amount"
    t.integer "placed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_structures", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "structure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["structure_id"], name: "index_user_structures_on_structure_id"
    t.index ["user_id"], name: "index_user_structures_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "base_commands", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_structures", "structures"
  add_foreign_key "user_structures", "users"
end
