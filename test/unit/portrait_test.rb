require 'test_helper'

class PortraitTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Portrait.new.valid?
  end
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

