require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Person.new.valid?
  end
end



# == Schema Information
#
# Table name: people
#
#  id                    :integer         not null, primary key
#  first_name            :string(255)
#  last_name             :string(255)
#  role                  :string(255)
#  bio                   :text
#  created_at            :datetime
#  updated_at            :datetime
#  headshot_file_name    :string(255)
#  headshot_content_type :string(255)
#  headshot_file_size    :integer
#  headshot_updated_at   :datetime
#  portrait_file_name    :string(255)
#  portrait_content_type :string(255)
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#  user_id               :integer
#  display               :boolean
#  email                 :string(255)
#  password_hash         :string(255)
#  password_salt         :string(255)
#  admin                 :boolean
#  paper_id              :integer
#

