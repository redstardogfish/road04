class AddPaperToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :paper_id, :integer
  end

  def self.down
    remove_column :people, :paper_id
  end
end
