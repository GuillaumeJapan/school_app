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

ActiveRecord::Schema.define(version: 2021_10_15_062258) do

  create_table "addresses", force: :cascade do |t|
    t.string "addressable_type", null: false
    t.integer "addressable_id", null: false
    t.string "label"
    t.string "country"
    t.string "zip_code"
    t.string "prefecture"
    t.string "city"
    t.string "addr1"
    t.text "addr2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "allergies", force: :cascade do |t|
    t.string "food"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "allergies_students", id: false, force: :cascade do |t|
    t.integer "allergy_id", null: false
    t.integer "student_id", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "relationship"
    t.string "phone"
    t.string "workplace_phone"
    t.string "email"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts_employees", id: false, force: :cascade do |t|
    t.integer "contact_id", null: false
    t.integer "employee_id", null: false
  end

  create_table "contacts_students", id: false, force: :cascade do |t|
    t.integer "contact_id", null: false
    t.integer "student_id", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.date "birth_date"
    t.string "contract_type"
    t.string "position"
    t.string "visa_status"
    t.date "visa_expiration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees_groups", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "group_id", null: false
  end

  create_table "employees_schools", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "school_id", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "school_id", null: false
    t.string "name"
    t.string "grade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_groups_on_school_id"
  end

  create_table "historics", force: :cascade do |t|
    t.integer "student_id", null: false
    t.string "school_name"
    t.string "group_name"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_historics_on_student_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "siblinghoods", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "school_id", null: false
    t.integer "group_id"
    t.integer "siblinghood_id"
    t.string "last_name"
    t.string "first_name"
    t.date "birth_date"
    t.date "inscription_date"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_students_on_group_id"
    t.index ["school_id"], name: "index_students_on_school_id"
    t.index ["siblinghood_id"], name: "index_students_on_siblinghood_id"
  end

  add_foreign_key "groups", "schools"
  add_foreign_key "historics", "students"
  add_foreign_key "students", "groups"
  add_foreign_key "students", "schools"
  add_foreign_key "students", "siblinghoods"
end
