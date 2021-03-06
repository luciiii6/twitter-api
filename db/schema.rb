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

ActiveRecord::Schema[7.0].define(version: 2022_05_21_084929) do
  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources_tweet_contents", id: false, force: :cascade do |t|
    t.integer "tweet_content_id"
    t.integer "resource_id"
    t.index ["resource_id"], name: "index_resources_tweet_contents_on_resource_id"
    t.index ["tweet_content_id"], name: "index_resources_tweet_contents_on_tweet_content_id"
  end

  create_table "tweet_contents", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
