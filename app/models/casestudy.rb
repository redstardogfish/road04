class Casestudy < ActiveRecord::Base
  attr_accessible :question, :headline, :strapline, :story
  
  
  validates_presence_of :headline, :story
  validates_length_of :story, :maximum => 300, :too_long => "Keep the case study to 300 words", :tokenizer => lambda {|str| str.scan(/\w+/) }

  
  
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

