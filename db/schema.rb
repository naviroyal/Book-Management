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

ActiveRecord::Schema[7.0].define(version: 2022_06_27_163415) do
  create_table "authors", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.text "phn_no"
    t.datetime "birth_date"
    t.datetime "death_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", charset: "utf8mb3", force: :cascade do |t|
    t.string "title"
    t.string "publisher"
    t.datetime "publish_date"
    t.integer "price"
    t.integer "sold_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "categories_id"
    t.bigint "authors_id"
    t.index ["authors_id"], name: "index_books_on_authors_id"
    t.index ["categories_id"], name: "index_books_on_categories_id"
  end

  create_table "categories", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "authors", column: "authors_id"
  add_foreign_key "books", "categories", column: "categories_id"
end