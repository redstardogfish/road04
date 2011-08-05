class HistoryStory < ActiveRecord::Base

  belongs_to :client
  
  validates_presence_of :start_year
  validate :either_client_or_alternative

  def x_ref
    (start_year-1980) * 50
  end
  
private
  def either_client_or_alternative
    errors.add(:client_and_alternative, "can't both be blank") if
          client_id.blank? && alternative_title.blank?
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

