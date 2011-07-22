class AddPaperToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :paper_id, :integer
  end

  def self.down
    remove_column :articles, :paper_id
  end
end
