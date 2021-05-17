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

ActiveRecord::Schema.define(version: 2021_05_16_190802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternative_answers", force: :cascade do |t|
    t.string "text"
    t.bigint "alternative_question_id", null: false
    t.bigint "survey_id", null: false
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alternative_question_id"], name: "index_alternative_answers_on_alternative_question_id"
    t.index ["survey_id"], name: "index_alternative_answers_on_survey_id"
  end

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

  create_table "boolean_answers", force: :cascade do |t|
    t.boolean "answer"
    t.bigint "boolean_question_id", null: false
    t.bigint "survey_id", null: false
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boolean_question_id"], name: "index_boolean_answers_on_boolean_question_id"
    t.index ["survey_id"], name: "index_boolean_answers_on_survey_id"
  end

  create_table "boolean_questions", force: :cascade do |t|
    t.string "title"
    t.boolean "answer"
    t.bigint "survey_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_boolean_questions_on_survey_id"
  end

  create_table "discursive_answers", force: :cascade do |t|
    t.text "text"
    t.bigint "discursive_question_id", null: false
    t.bigint "survey_id", null: false
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discursive_question_id"], name: "index_discursive_answers_on_discursive_question_id"
    t.index ["survey_id"], name: "index_discursive_answers_on_survey_id"
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
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_surveys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "alternative_answers", "alternative_questions"
  add_foreign_key "alternative_answers", "surveys"
  add_foreign_key "alternative_questions", "surveys"
  add_foreign_key "boolean_answers", "boolean_questions"
  add_foreign_key "boolean_answers", "surveys"
  add_foreign_key "boolean_questions", "surveys"
  add_foreign_key "discursive_answers", "discursive_questions"
  add_foreign_key "discursive_answers", "surveys"
  add_foreign_key "discursive_questions", "surveys"
  add_foreign_key "surveys", "users"
end
