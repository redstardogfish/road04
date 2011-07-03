class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :role, :bio, :headshot, :portrait
  
  has_attached_file :headshot, :styles => { :listing => "180x180#", :thumb => "90x90#" }
  has_attached_file :portrait, :styles => {:display => "295x648#"}
  
  def name
   "#{first_name} #{last_name}"
  end
end


# == Schema Information
#
# Table name: people
#
#  id                    :integer         not null, primary key
#  first_name            :string(255)
#  last_name             :string(255)
#  role                  :string(255)
#  bio                   :text
#  created_at            :datetime
#  updated_at            :datetime
#  headshot_file_name    :string(255)
#  headshot_content_type :string(255)
#  headshot_file_size    :integer
#  headshot_updated_at   :datetime
#  portrait_file_name    :string(255)
#  portrait_content_type :string(255)
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

