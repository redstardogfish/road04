class CreateBlogposts < ActiveRecord::Migration
  def self.up
    create_table :blogposts do |t|
      t.string :title
      t.string :author
      t.string :category
      t.date :date
      t.text :teaser
      t.text :content
      t.text :quote
      t.string :quote_author
      t.string :tags
      t.string :keywords
      t.text :description
      t.date :publish_at
      t.date :remove_at
      t.boolean :enable_comments
      t.timestamps
    end
  end

  def self.down
    drop_table :blogposts
  end
end
