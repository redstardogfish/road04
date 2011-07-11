class Casestudy < ActiveRecord::Base
  attr_accessible :question, :headline, :strapline, :story
end

# == Schema Information
#
# Table name: casestudies
#
#  id         :integer         not null, primary key
#  question   :string(255)
#  headline   :string(255)
#  strapline  :string(255)
#  story      :text
#  created_at :datetime
#  updated_at :datetime
#

