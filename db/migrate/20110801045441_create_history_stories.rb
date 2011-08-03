class CreateHistoryStories < ActiveRecord::Migration
  def self.up
    create_table :history_stories do |t|
      t.integer :start_year
      t.integer :end_year
      t.string :client
      t.string :alternative_title
      t.text :text
      t.boolean :display

      t.timestamps
    end
  end

  def self.down
    drop_table :history_stories
  end
end
