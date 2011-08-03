require 'test_helper'

class HistoryStoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: history_stories
#
#  id                :integer         not null, primary key
#  start_year        :integer
#  end_year          :integer
#  alternative_title :string(255)
#  text              :text
#  display           :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  client_id         :integer
#

