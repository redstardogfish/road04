class AddUserdetailsToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :display, :boolean
    add_column :people, :email, :string
    add_column :people, :password_hash, :string
    add_column :people, :password_salt, :string
    add_column :people, :admin, :boolean
  end

  def self.down
    remove_column :people, :admin
    remove_column :people, :password_salt
    remove_column :people, :password_hash
    remove_column :people, :email
    remove_column :people, :display
  end
end
