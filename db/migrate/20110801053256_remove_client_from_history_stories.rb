class RemoveClientFromHistoryStories < ActiveRecord::Migration
  def self.up
    remove_column :history_stories, :client
  end

  def self.down
    add_column :history_stories, :client, :string
  end
end
