require 'test_helper'

class CasestudyTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Casestudy.new.valid?
  end
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

