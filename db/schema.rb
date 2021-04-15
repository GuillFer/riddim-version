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

ActiveRecord::Schema.define(version: 2021_04_15_125436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "aka"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "founder_id"
    t.bigint "parent_id"
    t.index ["founder_id"], name: "index_labels_on_founder_id"
    t.index ["parent_id"], name: "index_labels_on_parent_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "band_id", null: false
    t.bigint "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_members_on_band_id"
    t.index ["member_id"], name: "index_members_on_member_id"
  end

  create_table "riddims", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "song_artists", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "as"
    t.index ["artist_id"], name: "index_song_artists_on_artist_id"
    t.index ["song_id"], name: "index_song_artists_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.bigint "label_id", null: false
    t.bigint "riddim_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "original"
    t.bigint "producer_id"
    t.string "producer_alias"
    t.boolean "instrumental"
    t.index ["label_id"], name: "index_songs_on_label_id"
    t.index ["producer_id"], name: "index_songs_on_producer_id"
    t.index ["riddim_id"], name: "index_songs_on_riddim_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "labels", "artists", column: "founder_id"
  add_foreign_key "labels", "labels", column: "parent_id"
  add_foreign_key "members", "artists", column: "band_id"
  add_foreign_key "members", "artists", column: "member_id"
  add_foreign_key "song_artists", "artists"
  add_foreign_key "song_artists", "songs"
  add_foreign_key "songs", "artists", column: "producer_id"
  add_foreign_key "songs", "labels"
  add_foreign_key "songs", "riddims"
end
