class Paper < ActiveRecord::Base
  belongs_to :person
  belongs_to :article

end

# == Schema Information
#
# Table name: papers
#
#  id         :integer         not null, primary key
#  article_id :integer
#  person_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

