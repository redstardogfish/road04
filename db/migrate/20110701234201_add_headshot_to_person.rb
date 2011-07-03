class AddHeadshotToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :headshot_file_name, :string
    add_column :people, :headshot_content_type, :string
    add_column :people, :headshot_file_size, :integer
    add_column :people, :headshot_updated_at, :datetime
  end

  def self.down
    remove_column :people, :headshot_updated_at
    remove_column :people, :headshot_file_size
    remove_column :people, :headshot_content_type
    remove_column :people, :headshot_file_name
  end
end
