class Blogpost < ActiveRecord::Base
  attr_accessible :title, :author, :category, :date, :teaser, :content, :quote, :quote_author, 
    :tags, :keywords, :description, :publish_at, :remove_at, :enable_comments, :image
  
  has_attached_file :image, :styles => { :thumb => "270x180#", :display => "720x360#" }
end
