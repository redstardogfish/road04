require 'test_helper'

class IndustryTest < ActiveSupport::TestCase
  def test_should_not_save_industry_without_name
    industry = Industry.new
    assert !industry.save, "Saved without a name"

  end
  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    some_undefined_variable
    assert true
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

