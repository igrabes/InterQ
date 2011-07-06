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

ActiveRecord::Schema.define(:version => 20110630050628) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.text     "answer1"
    t.text     "answer2"
    t.text     "answer3"
    t.text     "answer4"
    t.text     "answer5"
    t.text     "answer6"
    t.text     "answer7"
    t.text     "answer8"
    t.text     "answer9"
    t.text     "answer10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.integer  "job_id"
    t.text     "question1"
    t.text     "question2"
    t.text     "question3"
    t.text     "question4"
    t.text     "question5"
    t.text     "question6"
    t.text     "question7"
    t.text     "question8"
    t.text     "question9"
    t.text     "question10"
    t.text     "question11"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
