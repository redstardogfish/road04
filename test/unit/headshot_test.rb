require 'test_helper'

class HeadshotTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Headshot.new.valid?
  end
end

# == Schema Information
#
# Table name: headshots
#
#  id         :integer         not null, primary key
#  use        :boolean
#  created_at :datetime
#  updated_at :datetime
#

