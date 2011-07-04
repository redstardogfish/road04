require 'test_helper'

class BlogpostTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Blogpost.new.valid?
  end
end
