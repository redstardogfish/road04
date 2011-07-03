class Portrait < ActiveRecord::Base
  attr_accessible :use
end

# == Schema Information
#
# Table name: portraits
#
#  id         :integer         not null, primary key
#  use        :boolean
#  created_at :datetime
#  updated_at :datetime
#

