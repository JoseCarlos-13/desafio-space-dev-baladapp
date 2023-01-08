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

ActiveRecord::Schema.define(version: 2023_01_08_072027) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "agencies", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.integer "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "configurations", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "family"
    t.string "full_name"
    t.string "variant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rocket_id", null: false
    t.index ["rocket_id"], name: "index_configurations_on_rocket_id"
  end

  create_table "launch_service_providers", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "launch_id", null: false
    t.index ["launch_id"], name: "index_launch_service_providers_on_launch_id"
  end

  create_table "launches", force: :cascade do |t|
    t.string "url"
    t.string "slug"
    t.string "name"
    t.datetime "net"
    t.datetime "window_end"
    t.datetime "window_start"
    t.boolean "inhold"
    t.boolean "tbdtime"
    t.boolean "tbddate"
    t.integer "probability"
    t.string "holdreason"
    t.string "failreason"
    t.string "hashtag"
    t.string "mission"
    t.boolean "webcast_live"
    t.string "infographic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.integer "orbital_launch_attempt_count"
    t.integer "location_launch_attempt_count"
    t.integer "pad_launch_attempt_count"
    t.integer "agency_launch_attempt_count"
    t.integer "orbital_launch_attempt_count_year"
    t.integer "location_launch_attempt_count_year"
    t.integer "pad_launch_attempt_count_year"
    t.integer "agency_launch_attempt_count_year"
  end

  create_table "locations", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "country_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_landing_count"
    t.integer "total_launch_count"
    t.string "map_image"
    t.integer "pad_id", null: false
    t.index ["pad_id"], name: "index_locations_on_pad_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "launch_designator"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "launch_id", null: false
    t.index ["launch_id"], name: "index_missions_on_launch_id"
  end

  create_table "orbits", force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mission_id", null: false
    t.index ["mission_id"], name: "index_orbits_on_mission_id"
  end

  create_table "pads", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "info_url"
    t.string "wiki_url"
    t.string "map_url"
    t.float "latitude"
    t.float "longitude"
    t.string "map_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_launch_count"
    t.integer "agency_id", null: false
    t.integer "orbital_launch_attempt_count"
    t.integer "launch_id", null: false
    t.index ["agency_id"], name: "index_pads_on_agency_id"
    t.index ["launch_id"], name: "index_pads_on_launch_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "info_url"
    t.string "wiki_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rockets", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "launch_id", null: false
    t.index ["launch_id"], name: "index_rockets_on_launch_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "abbrev"
    t.string "description"
    t.integer "launch_id", null: false
    t.index ["launch_id"], name: "index_statuses_on_launch_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "configurations", "rockets"
  add_foreign_key "launch_service_providers", "launches"
  add_foreign_key "locations", "pads"
  add_foreign_key "missions", "launches"
  add_foreign_key "orbits", "missions"
  add_foreign_key "pads", "agencies"
  add_foreign_key "pads", "launches"
  add_foreign_key "rockets", "launches"
  add_foreign_key "statuses", "launches"
end
