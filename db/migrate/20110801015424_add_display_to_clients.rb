class AddDisplayToClients < ActiveRecord::Migration
  def self.up
    add_column :clients, :display, :boolean
  end

  def self.down
    remove_column :clients, :display
  end
end
