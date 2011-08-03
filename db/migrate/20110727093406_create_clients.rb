class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.integer :industry_id
      t.string :mark_file_name
      t.string :mark_content_type
      t.integer :mark_file_size
      t.datetime :mark_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
