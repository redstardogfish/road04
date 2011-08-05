class Word < ActiveRecord::Base
  
  
  validates_presence_of :uk, :us
end

# == Schema Information
#
# Table name: words
#
#  id         :integer         not null, primary key
#  uk         :string(255)
#  us         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

