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

ActiveRecord::Schema.define(version: 20140425215052) do

  create_table "avaliacoes", force: true do |t|
    t.integer  "id_item"
    t.integer  "id_user"
    t.string   "id_tipo_avaliacao", limit: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", force: true do |t|
    t.string   "descricao",  limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "generos", force: true do |t|
    t.string   "descricao",  limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "rel_generos_itens", id: false, force: true do |t|
    t.integer "id_item"
    t.integer "id_genero"
  end

  create_table "usuarios", force: true do |t|
    t.string   "primeiro_nome",  limit: 50
    t.string   "ultimo_nome",    limit: 50
    t.string   "username",       limit: 50,                     null: false
    t.date     "dt_aniversario"
    t.string   "sexo",           limit: 1
    t.string   "email",          limit: 50,                     null: false
    t.string   "senha",          limit: 40,                     null: false
    t.string   "role",           limit: 10, default: "regular"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
