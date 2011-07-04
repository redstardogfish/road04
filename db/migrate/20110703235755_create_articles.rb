class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :intro_para
      t.text :body
      t.text :para_quote
      t.string :para_quote_author
      t.string :topic
      t.string :keywords
      t.string :meta_description
      t.string :image_quote
      t.string :promo_link_text
      t.string :promo_link_url
      t.date :published_date
      t.date :publish_at
      t.date :remove_at
      t.boolean :display
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
