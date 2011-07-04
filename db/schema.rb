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

ActiveRecord::Schema.define(:version => 20110704002636) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "intro_para"
    t.text     "body"
    t.text     "para_quote"
    t.string   "para_quote_author"
    t.string   "topic"
    t.string   "keywords"
    t.string   "meta_description"
    t.string   "image_quote"
    t.string   "promo_link_text"
    t.string   "promo_link_url"
    t.date     "published_date"
    t.date     "publish_at"
    t.date     "remove_at"
    t.boolean  "display"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_thumb_file_name"
    t.string   "image_thumb_content_type"
    t.integer  "image_thumb_file_size"
    t.datetime "image_thumb_updated_at"
    t.string   "article_image_file_name"
    t.string   "article_image_content_type"
    t.integer  "article_image_file_size"
    t.datetime "article_image_updated_at"
    t.string   "promo_image_file_name"
    t.string   "promo_image_content_type"
    t.integer  "promo_image_file_size"
    t.datetime "promo_image_updated_at"
  end

  create_table "headshots", :force => true do |t|
    t.boolean  "use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "headshot_file_name"
    t.string   "headshot_content_type"
    t.integer  "headshot_file_size"
    t.datetime "headshot_updated_at"
    t.string   "portrait_file_name"
    t.string   "portrait_content_type"
    t.integer  "portrait_file_size"
    t.datetime "portrait_updated_at"
  end

  create_table "portraits", :force => true do |t|
    t.boolean  "use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
