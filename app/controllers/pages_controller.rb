class PagesController < ApplicationController
  before_filter :authenticate, :only => [:admin, :accordion, :test2]
  before_filter :user_country, :only  => [:test]
  
  def home
    @title = "Home"
    @body_class = "home"
  end

  def privacy
    @title = "Privacy"
    @body_class = "content"
  end

  def contact
    @title = "Contact Us"
    @body_class = "contact-us"
  end

  def dna
    @title = "Our DNA"
    @body_class = "contentWhatWeDo"
  end
  
  def what_we_do
    @title = "What We Do"
    @body_class = "what"
  end
  
  def admin
    render :layout => 'admin'
    
  end
  
  def accordion
  
  end
  
  def test
    @loc = cookies[:country_code]
  end
  def test2
    @stories = HistoryStory.order("start_year")
  end
  
end
