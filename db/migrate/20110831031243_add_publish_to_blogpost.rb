class AddPublishToBlogpost < ActiveRecord::Migration
  def self.up
    add_column :blogposts, :publish, :boolean
  end

  def self.down
    remove_column :blogposts, :publish
  end
end
