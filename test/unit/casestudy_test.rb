require 'test_helper'

class CasestudyTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Casestudy.new.valid?
  end
end
