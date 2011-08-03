require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Client.new.valid?
  end
end



# == Schema Information
#
# Table name: clients
#
#  id                :integer         not null, primary key
#  name              :string(255)
#  industry_id       :integer
#  mark_file_name    :string(255)
#  mark_content_type :string(255)
#  mark_file_size    :integer
#  mark_updated_at   :datetime
#  created_at        :datetime
#  updated_at        :datetime
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  display           :boolean
#

