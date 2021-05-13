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

ActiveRecord::Schema.define(version: 2021_05_13_005550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternative_questions", force: :cascade do |t|
    t.string "title"
    t.string "questionA"
    t.string "questionB"
    t.string "questionC"
    t.string "questionD"
    t.integer "answer"
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_alternative_questions_on_survey_id"
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "survey_id", null: false
    t.boolean "boolean_answer"
    t.string "alternative_answer"
    t.text "discursive_answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_answers_on_survey_id"
  end

  create_table "boolean_questions", force: :cascade do |t|
    t.string "title"
    t.boolean "answer"
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_boolean_questions_on_survey_id"
  end

  create_table "discursive_questions", force: :cascade do |t|
    t.string "title"
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_discursive_questions_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "alternative_questions", "surveys"
  add_foreign_key "answers", "surveys"
  add_foreign_key "boolean_questions", "surveys"
  add_foreign_key "discursive_questions", "surveys"
end
