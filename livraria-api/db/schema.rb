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

ActiveRecord::Schema.define(version: 2020_06_09_015219) do

  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.date "aniversario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.date "idade"
    t.string "sexo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "endereco_id", null: false
    t.index ["endereco_id"], name: "index_clientes_on_endereco_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string "nome"
    t.string "recomendacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "exemplar"
    t.date "ano"
    t.string "disponibilidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "genero_id", null: false
    t.integer "autor_id", null: false
    t.index ["autor_id"], name: "index_livros_on_autor_id"
    t.index ["genero_id"], name: "index_livros_on_genero_id"
  end

  add_foreign_key "clientes", "enderecos"
  add_foreign_key "livros", "autors"
  add_foreign_key "livros", "generos"
end
