require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Article.new.valid?
  end
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

