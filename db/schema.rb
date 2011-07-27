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

ActiveRecord::Schema.define(:version => 20110726041558) do

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
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string   "publication"
    t.integer  "paper_id"
    t.integer  "category_id"
  end

  create_table "blogposts", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "category"
    t.date     "date"
    t.text     "teaser"
    t.text     "content"
    t.text     "quote"
    t.string   "quote_author"
    t.string   "tags"
    t.string   "keywords"
    t.text     "description"
    t.date     "publish_at"
    t.date     "remove_at"
    t.boolean  "enable_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "casestudies", :force => true do |t|
    t.string   "question"
    t.string   "headline"
    t.string   "strapline"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headshots", :force => true do |t|
    t.boolean  "use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "papers", :force => true do |t|
    t.integer  "article_id"
    t.integer  "person_id"
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
    t.integer  "user_id"
    t.boolean  "display"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "admin"
    t.integer  "paper_id"
  end

  create_table "portraits", :force => true do |t|
    t.boolean  "use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "person_id"
  end

  create_table "words", :force => true do |t|
    t.string   "uk"
    t.string   "us"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
