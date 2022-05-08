# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_08_112627) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "json_schema_keywords_generics", force: :cascade do |t|
    t.string "generalisable_type", null: false
    t.bigint "generalisable_id", null: false
    t.string "title"
    t.text "description"
    t.string "default"
    t.string "examples", array: true
    t.boolean "read_only", default: false, null: false
    t.boolean "write_only", default: false, null: false
    t.boolean "deprecated", default: false, null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generalisable_type", "generalisable_id"], name: "idx_json_schema_keywords_generics_type_id_unique", unique: true
  end

  create_table "json_schema_primitives_arrays", force: :cascade do |t|
    t.bigint "itemable_id", null: false
    t.string "containable_type"
    t.bigint "containable_id"
    t.integer "minimum_contain_count"
    t.integer "maximum_contain_count"
    t.integer "minimum_item_count"
    t.integer "maximum_item_count"
    t.boolean "unique_items", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "root", default: false, null: false
    t.index ["containable_type", "containable_id"], name: "index_json_schema_primitives_arrays_on_containable"
    t.index ["itemable_id"], name: "index_json_schema_primitives_arrays_on_itemable_id"
  end

  create_table "json_schema_primitives_objects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "root", default: false, null: false
  end

  create_table "json_schema_primitives_strings", force: :cascade do |t|
    t.integer "min_length"
    t.integer "max_length"
    t.string "pattern"
    t.integer "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
