class Article < ActiveRecord::Base
  attr_accessible :title, :author, :intro_para, :body, :para_quote, :para_quote_author, 
    :topic, :keywords, :meta_description, :image_quote, :promo_link_text, :promo_link_url, 
    :published_date, :publish_at, :remove_at, :display, :image_thumb, :article_image, :promo_image

  has_attached_file :image_thumb, :styles => { :display => "270x180#" }
  has_attached_file :article_image, :styles => {:display => "360x360#"}
  has_attached_file :promo_image, :styles => {:display => "180x180#"}

end

# == Schema Information
#
# Table name: articles
#
#  id                :integer         not null, primary key
#  title             :string(255)
#  author            :string(255)
#  intro_para        :text
#  body              :text
#  para_quote        :text
#  para_quote_author :string(255)
#  topic             :string(255)
#  keywords          :string(255)
#  meta_description  :string(255)
#  image_quote       :string(255)
#  promo_link_text   :string(255)
#  promo_link_url    :string(255)
#  published_date    :date
#  publish_at        :date
#  remove_at         :date
#  display           :boolean
#  created_at        :datetime
#  updated_at        :datetime
#

