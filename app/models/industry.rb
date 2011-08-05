class Industry < ActiveRecord::Base
  attr_accessible :name
  has_many :clients
  
  validates_presence_of :name
  
  
end

# == Schema Information
#
# Table name: industries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

