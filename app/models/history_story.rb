class HistoryStory < ActiveRecord::Base

  belongs_to :client

  def x_ref
    (start_year-1980) * 50
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

