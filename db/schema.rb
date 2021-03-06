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

ActiveRecord::Schema.define(version: 20180307043437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_posters", force: :cascade do |t|
    t.integer "tmdb_id"
    t.text "poster_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "overview"
  end

  create_table "movies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.integer "year"
    t.integer "traktid"
    t.text "image"
  end

  create_table "movies_users", id: false, force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  create_table "shows_users", id: false, force: :cascade do |t|
    t.bigint "show_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_viewedmovies", id: false, force: :cascade do |t|
    t.bigint "viewedmovie_id", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_users_viewedmovies_on_user_id"
    t.index ["viewedmovie_id"], name: "index_users_viewedmovies_on_viewedmovie_id"
  end

  create_table "viewedmovies", force: :cascade do |t|
    t.text "name"
    t.integer "year"
    t.integer "traktid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.text "image"
  end

end
