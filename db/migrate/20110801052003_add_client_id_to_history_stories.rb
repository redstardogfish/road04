class AddClientIdToHistoryStories < ActiveRecord::Migration
  def self.up
    add_column :history_stories, :client_id, :integer
  end

  def self.down
    remove_column :history_stories, :client_id
  end
end
