# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140429231907) do

  create_table "avaliacoes", force: true do |t|
    t.integer  "id_item"
    t.integer  "id_usuario"
    t.integer  "avaliacao",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacoes", ["id"], name: "index_avaliacoes_on_id", using: :btree
  add_index "avaliacoes", ["id_item"], name: "index_avaliacoes_on_id_item", using: :btree
  add_index "avaliacoes", ["id_usuario"], name: "index_avaliacoes_on_id_usuario", using: :btree

  create_table "categorias", force: true do |t|
    t.string   "descricao",  limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorias", ["id"], name: "index_categorias_on_id", using: :btree

  create_table "comentarios", force: true do |t|
    t.integer  "id_usuario"
    t.integer  "id_item"
    t.string   "titulo",     limit: 100,             null: false
    t.string   "comentario", limit: 200,             null: false
    t.integer  "like",                   default: 0
    t.integer  "dislike",                default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["id"], name: "index_comentarios_on_id", using: :btree
  add_index "comentarios", ["id_item"], name: "index_comentarios_on_id_item", using: :btree
  add_index "comentarios", ["id_usuario"], name: "index_comentarios_on_id_usuario", using: :btree

  create_table "generos", force: true do |t|
    t.string   "descricao",  limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "generos", ["id"], name: "index_generos_on_id", using: :btree

  create_table "itens", force: true do |t|
    t.integer  "id_usuario"
    t.integer  "id_categoria"
    t.string   "nome_ptbr",    limit: 100
    t.string   "nome_en",      limit: 100
    t.string   "descricao"
    t.string   "wiki_link",    limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itens", ["id"], name: "index_itens_on_id", using: :btree
  add_index "itens", ["id_categoria"], name: "index_itens_on_id_categoria", using: :btree

  create_table "rel_generos_itens", id: false, force: true do |t|
    t.integer "id_item"
    t.integer "id_genero"
  end

  add_index "rel_generos_itens", ["id_genero"], name: "index_rel_generos_itens_on_id_genero", using: :btree
  add_index "rel_generos_itens", ["id_item"], name: "index_rel_generos_itens_on_id_item", using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "primeiro_nome",   limit: 50
    t.string   "ultimo_nome",     limit: 50
    t.string   "username",        limit: 50,             null: false
    t.date     "dt_aniversario"
    t.string   "sexo",            limit: 1
    t.string   "email",           limit: 50,             null: false
    t.string   "password_digest",                        null: false
    t.integer  "admin",                      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "usuarios", ["remember_token"], name: "index_usuarios_on_remember_token", using: :btree

end
