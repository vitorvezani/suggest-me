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

ActiveRecord::Schema.define(version: 20140605231349) do

  create_table "avaliacoes", force: true do |t|
    t.integer  "item_id"
    t.integer  "usuario_id"
    t.boolean  "avaliacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacoes", ["id"], name: "index_avaliacoes_on_id", using: :btree
  add_index "avaliacoes", ["item_id"], name: "index_avaliacoes_on_item_id", using: :btree
  add_index "avaliacoes", ["usuario_id", "item_id"], name: "index_avaliacoes_on_usuario_id_and_item_id", unique: true, using: :btree
  add_index "avaliacoes", ["usuario_id"], name: "index_avaliacoes_on_usuario_id", using: :btree

  create_table "categorias", force: true do |t|
    t.string   "descricao",  limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorias", ["id"], name: "index_categorias_on_id", using: :btree

  create_table "comentarios", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "item_id"
    t.string   "comentario", limit: 500,             null: false
    t.integer  "like",                   default: 0
    t.integer  "dislike",                default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["id"], name: "index_comentarios_on_id", using: :btree
  add_index "comentarios", ["item_id"], name: "index_comentarios_on_item_id", using: :btree
  add_index "comentarios", ["usuario_id"], name: "index_comentarios_on_usuario_id", using: :btree

  create_table "generalizacoes", force: true do |t|
    t.integer  "item_id"
    t.integer  "genero_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "generalizacoes", ["genero_id"], name: "index_generalizacoes_on_genero_id", using: :btree
  add_index "generalizacoes", ["item_id"], name: "index_generalizacoes_on_item_id", using: :btree

  create_table "generos", force: true do |t|
    t.string   "nome",       limit: 40
    t.string   "descricao",  limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "generos", ["id"], name: "index_generos_on_id", using: :btree

  create_table "itens", force: true do |t|
    t.integer  "categoria_id"
    t.string   "nome_ptbr",    limit: 100
    t.string   "nome_en",      limit: 100
    t.string   "descricao"
    t.string   "wiki_link",    limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itens", ["categoria_id", "nome_en"], name: "index_itens_on_categoria_id_and_nome_en", unique: true, using: :btree
  add_index "itens", ["categoria_id", "nome_ptbr"], name: "index_itens_on_categoria_id_and_nome_ptbr", unique: true, using: :btree
  add_index "itens", ["categoria_id"], name: "index_itens_on_categoria_id", using: :btree
  add_index "itens", ["id"], name: "index_itens_on_id", using: :btree
  add_index "itens", ["nome_en"], name: "index_itens_on_nome_en", using: :btree
  add_index "itens", ["nome_ptbr"], name: "index_itens_on_nome_ptbr", using: :btree

  create_table "relacoes", force: true do |t|
    t.integer  "seguidor_id"
    t.integer  "seguido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "primeiro_nome",    limit: 50
    t.string   "ultimo_nome",      limit: 50
    t.string   "username"
    t.date     "dt_aniversario"
    t.string   "sexo",             limit: 1
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",                       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "image"
  end

  add_index "usuarios", ["remember_token"], name: "index_usuarios_on_remember_token", using: :btree

end
