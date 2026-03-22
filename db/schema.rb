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

ActiveRecord::Schema[8.1].define(version: 2026_03_22_230458) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "adscription_unities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "adsc_unity_desc", null: false
    t.datetime "created_at", null: false
    t.uuid "responsibility_center_id", null: false
    t.datetime "updated_at", null: false
    t.index ["responsibility_center_id"], name: "index_adscription_unities_on_responsibility_center_id"
  end

  create_table "contract_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_movements", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "creation_date", null: false
    t.string "description", null: false
    t.uuid "employee_id", null: false
    t.uuid "employment_id", null: false
    t.uuid "movement_catalog_id", null: false
    t.datetime "updated_at", null: false
    t.uuid "user_id", null: false
    t.index ["employee_id"], name: "index_employee_movements_on_employee_id"
    t.index ["employment_id"], name: "index_employee_movements_on_employment_id"
    t.index ["movement_catalog_id"], name: "index_employee_movements_on_movement_catalog_id"
    t.index ["user_id"], name: "index_employee_movements_on_user_id"
  end

  create_table "employee_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address"
    t.string "birth_date"
    t.datetime "created_at", null: false
    t.string "curp", null: false
    t.string "father_last_name", null: false
    t.string "gender", null: false
    t.string "marital_status"
    t.string "mother_last_name", null: false
    t.string "name", null: false
    t.string "nationality"
    t.string "rfc", null: false
    t.datetime "updated_at", null: false
    t.index ["curp"], name: "index_employees_on_curp", unique: true
    t.index ["rfc"], name: "index_employees_on_rfc", unique: true
  end

  create_table "employments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contract_type_id", null: false
    t.datetime "created_at", null: false
    t.uuid "employee_id", null: false
    t.uuid "employee_type_id", null: false
    t.date "end_date"
    t.uuid "position_id", null: false
    t.uuid "responsibility_center_id", null: false
    t.date "start_date", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_type_id"], name: "index_employments_on_contract_type_id"
    t.index ["employee_id"], name: "index_employments_on_employee_id"
    t.index ["employee_type_id"], name: "index_employments_on_employee_type_id"
    t.index ["position_id"], name: "index_employments_on_position_id"
    t.index ["responsibility_center_id"], name: "index_employments_on_responsibility_center_id"
  end

  create_table "movement_catalogs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description", null: false
    t.string "movement_number", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_number"], name: "index_movement_catalogs_on_movement_number", unique: true
  end

  create_table "positions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "position_desc", null: false
    t.decimal "salary", precision: 10, scale: 2, null: false
    t.datetime "updated_at", null: false
    t.integer "zone", null: false
  end

  create_table "responsibility_centers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "#<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition"
    t.datetime "created_at", null: false
    t.string "resp_center_desc", null: false
    t.string "responsible"
    t.datetime "updated_at", null: false
    t.integer "zone", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "contact_number", null: false
    t.datetime "created_at", null: false
    t.string "email"
    t.string "full_name", null: false
    t.string "password", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.index ["contact_number"], name: "index_users_on_contact_number", unique: true
    t.index ["password"], name: "index_users_on_password", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "adscription_unities", "responsibility_centers"
  add_foreign_key "employee_movements", "employees"
  add_foreign_key "employee_movements", "employments"
  add_foreign_key "employee_movements", "movement_catalogs"
  add_foreign_key "employee_movements", "users"
  add_foreign_key "employments", "contract_types"
  add_foreign_key "employments", "employee_types"
  add_foreign_key "employments", "employees"
  add_foreign_key "employments", "positions"
  add_foreign_key "employments", "responsibility_centers"
end
