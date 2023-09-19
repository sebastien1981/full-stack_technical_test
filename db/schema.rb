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

ActiveRecord::Schema[7.0].define(version: 2023_09_19_113656) do
  create_table "actor_js", force: :cascade do |t|
    t.integer "actor_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_actor_js_on_actor_id"
    t.index ["movie_id"], name: "index_actor_js_on_movie_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string "actors"
    t.string "actor_facets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alternative_title_js", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "alternative_title_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alternative_title_id"], name: "index_alternative_title_js_on_alternative_title_id"
    t.index ["movie_id"], name: "index_alternative_title_js_on_movie_id"
  end

  create_table "alternative_titles", force: :cascade do |t|
    t.string "alternative_titles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genre_js", force: :cascade do |t|
    t.integer "genre_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genre_js_on_genre_id"
    t.index ["movie_id"], name: "index_genre_js_on_movie_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "image"
    t.string "color"
    t.float "score"
    t.integer "rating"
    t.string "objectID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "actor_js", "actors"
  add_foreign_key "actor_js", "movies"
  add_foreign_key "alternative_title_js", "alternative_titles"
  add_foreign_key "alternative_title_js", "movies"
  add_foreign_key "genre_js", "genres"
  add_foreign_key "genre_js", "movies"
end
