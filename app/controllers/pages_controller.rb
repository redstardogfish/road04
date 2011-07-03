class PagesController < ApplicationController
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
end
