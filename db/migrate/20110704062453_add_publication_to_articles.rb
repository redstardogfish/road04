class AddPublicationToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :publication, :string
  end

  def self.down
    remove_column :articles, :publication
  end
end
