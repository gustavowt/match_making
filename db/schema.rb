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

ActiveRecord::Schema[7.0].define(version: 2022_05_29_230526) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.integer "challenger_id", null: false
    t.integer "challenged_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenged_id"], name: "index_challenges_on_challenged_id"
    t.index ["challenger_id"], name: "index_challenges_on_challenger_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "game_type"
    t.integer "game_id"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "map_choices", force: :cascade do |t|
    t.bigint "map_id", null: false
    t.bigint "match_id", null: false
    t.bigint "user_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["map_id"], name: "index_map_choices_on_map_id"
    t.index ["match_id"], name: "index_map_choices_on_match_id"
    t.index ["user_id"], name: "index_map_choices_on_user_id"
  end

  create_table "maps", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_maps_on_game_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "challenge_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_matches_on_challenge_id"
    t.index ["room_id"], name: "index_matches_on_room_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "room_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_players_on_room_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "birthday"
    t.string "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.string "status"
    t.string "visibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_rooms_on_game_id"
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.uuid "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "challenges", "rooms", column: "challenged_id"
  add_foreign_key "challenges", "rooms", column: "challenger_id"
  add_foreign_key "map_choices", "maps"
  add_foreign_key "map_choices", "matches"
  add_foreign_key "map_choices", "users"
  add_foreign_key "maps", "games"
  add_foreign_key "matches", "challenges"
  add_foreign_key "matches", "rooms"
  add_foreign_key "players", "rooms"
  add_foreign_key "players", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "rooms", "games"
  add_foreign_key "rooms", "users"
end
