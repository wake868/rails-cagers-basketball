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

ActiveRecord::Schema[7.0].define(version: 2022_03_24_164818) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"
  enable_extension "pgjwt"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "action", ["INSERT", "UPDATE", "DELETE", "TRUNCATE", "ERROR"]
  create_enum "equality_op", ["eq", "neq", "lt", "lte", "gt", "gte"]

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.integer "rank"
    t.text "body"
    t.string "blurb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
