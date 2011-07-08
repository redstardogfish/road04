class CreateCasestudies < ActiveRecord::Migration
  def self.up
    create_table :casestudies do |t|
      t.string :question
      t.string :headline
      t.string :strapline
      t.text :story
      t.timestamps
    end
  end

  def self.down
    drop_table :casestudies
  end
end
