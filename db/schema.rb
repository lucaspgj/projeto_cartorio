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

ActiveRecord::Schema.define(version: 20181016004918) do

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "senha"
    t.string "matricula"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imoveis", force: :cascade do |t|
    t.string "iptu"
    t.string "area"
    t.string "endereco"
    t.integer "matricula"
    t.string "cidade"
    t.string "ato_declaratorio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imovel_moradores", force: :cascade do |t|
    t.integer "id_morador"
    t.integer "id_imovel"
    t.integer "id_funcionario"
    t.integer "processo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moradores", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.string "est_civil"
    t.string "profissao"
    t.string "nome_conjuge"
    t.string "cpf_conjuge"
    t.string "profissao_conjuge"
    t.string "est_civil_conjuge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
