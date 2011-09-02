class Blogpost < ActiveRecord::Base
  attr_accessible :title, :author, :category, :date, :teaser, :content, :quote, :quote_author, 
    :tags, :keywords, :description, :publish_at, :remove_at, :enable_comments, :image, :publish
  
  has_attached_file :image, :styles => { :thumb => "270x180#", :display => "720x360#" }
  
  validates_presence_of :title, :author, :content
end

# == Schema Information
#
# Table name: blogposts
#
#  id                 :integer         not null, primary key
#  title              :string(255)
#  author             :string(255)
#  category           :string(255)
#  date               :date
#  teaser             :text
#  content            :text
#  quote              :text
#  quote_author       :string(255)
#  tags               :string(255)
#  keywords           :string(255)
#  description        :text
#  publish_at         :date
#  remove_at          :date
#  enable_comments    :boolean
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

