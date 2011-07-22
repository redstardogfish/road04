require 'test_helper'

class PaperTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

