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

ActiveRecord::Schema.define(version: 20141018192421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "flags", force: true do |t|
    t.text     "conteudo"
    t.integer  "usuario_id"
    t.integer  "tipo_flag_id"
    t.integer  "flagavel_id"
    t.string   "flagavel_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flags", ["flagavel_id"], name: "index_flags_on_flagavel_id", using: :btree
  add_index "flags", ["flagavel_type"], name: "index_flags_on_flagavel_type", using: :btree
  add_index "flags", ["tipo_flag_id"], name: "index_flags_on_tipo_flag_id", using: :btree
  add_index "flags", ["usuario_id"], name: "index_flags_on_usuario_id", using: :btree

  create_table "generalizacoes", force: true do |t|
    t.integer  "item_id"
    t.integer  "genero_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "generalizacoes", ["genero_id"], name: "index_generalizacoes_on_genero_id", using: :btree
  add_index "generalizacoes", ["item_id", "genero_id"], name: "index_generalizacoes_on_item_id_and_genero_id", using: :btree
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
    t.string   "descricao",    limit: 15000
    t.string   "wiki_link",    limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_visited"
  end

  add_index "itens", ["categoria_id", "nome_ptbr"], name: "index_itens_on_categoria_id_and_nome_ptbr", unique: true, using: :btree
  add_index "itens", ["categoria_id"], name: "index_itens_on_categoria_id", using: :btree
  add_index "itens", ["id"], name: "index_itens_on_id", using: :btree
  add_index "itens", ["last_visited"], name: "index_itens_on_last_visited", using: :btree
  add_index "itens", ["nome_en"], name: "index_itens_on_nome_en", using: :btree
  add_index "itens", ["nome_ptbr"], name: "index_itens_on_nome_ptbr", using: :btree

  create_table "relacoes", force: true do |t|
    t.integer  "seguidor_id"
    t.integer  "seguido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relacoes", ["seguido_id"], name: "index_relacoes_on_seguido_id", using: :btree
  add_index "relacoes", ["seguidor_id", "seguido_id"], name: "index_relacoes_on_seguidor_id_and_seguido_id", unique: true, using: :btree
  add_index "relacoes", ["seguidor_id"], name: "index_relacoes_on_seguidor_id", using: :btree

  create_table "tipo_flags", force: true do |t|
    t.string   "descricao",  limit: 1000
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "primeiro_nome",        limit: 50
    t.string   "ultimo_nome",          limit: 50
    t.string   "username"
    t.date     "dt_aniversario"
    t.string   "sexo",                 limit: 1
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",                           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "image"
    t.datetime "last_login"
    t.string   "info"
    t.string   "confimartion_code"
    t.boolean  "confirmed",                       default: false
    t.integer  "max_rec_colaborativa",            default: 12
    t.integer  "max_rec_conteudo",                default: 10
    t.boolean  "email_publico",                   default: false
  end

  add_index "usuarios", ["last_login"], name: "index_usuarios_on_last_login", using: :btree
  add_index "usuarios", ["remember_token"], name: "index_usuarios_on_remember_token", using: :btree

end
