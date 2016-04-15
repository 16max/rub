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

ActiveRecord::Schema.define(version: 4) do

  create_table "employees", force: :cascade do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "username"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employees", ["project_id"], name: "index_employees_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "max_hours"
  end

  create_table "worked_hours", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "employee_id"
    t.integer  "hours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "worked_hours", ["employee_id"], name: "index_worked_hours_on_employee_id"
  add_index "worked_hours", ["project_id"], name: "index_worked_hours_on_project_id"

end
