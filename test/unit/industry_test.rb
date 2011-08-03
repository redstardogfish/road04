require 'test_helper'

class IndustryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Industry.new.valid?
  end
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

