class CreateHeadshots < ActiveRecord::Migration
  def self.up
    create_table :headshots do |t|
      t.boolean :use
      t.timestamps
    end
  end

  def self.down
    drop_table :headshots
  end
end
