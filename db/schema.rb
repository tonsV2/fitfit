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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110208213156) do

  create_table "exercise_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "preparation"
    t.text     "execution"
    t.text     "comment"
    t.string   "url"
    t.integer  "exercise_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "muscle_groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "muscles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.integer  "muscle_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", :id => false, :force => true do |t|
    t.integer "exercise_id"
    t.integer "muscle_id"
  end

end
