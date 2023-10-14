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

ActiveRecord::Schema[7.0].define(version: 2023_10_13_192219) do
  create_table "articles", force: :cascade do |t|
    t.bigint "article_id"
    t.string "titulo", null: false
    t.string "autor", null: false
    t.string "resumo"
    t.string "universidade", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.bigint "keyword_id"
    t.string "palavra", null: false
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"article\", \"palavra\"", name: "index_keywords_on_article_and_palavra", unique: true
    t.index ["article_id"], name: "index_keywords_on_article_id"
  end

  add_foreign_key "keywords", "articles"
end
