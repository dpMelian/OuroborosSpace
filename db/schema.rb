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

ActiveRecord::Schema.define(version: 2020_06_07_131504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "noticias", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planetas", force: :cascade do |t|
    t.string "nombre"
    t.string "foto"
    t.string "fecha_descubrimiento"
    t.decimal "masa_en_tierras"
    t.string "periodo_rotacion"
    t.string "periodo_orbital"
    t.decimal "gravedad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "rol"
    t.string "password_digest"
    t.index ["username"], name: "index_usuarios_on_username", unique: true
  end

end
