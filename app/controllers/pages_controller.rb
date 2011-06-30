class PagesController < ApplicationController
  def home
    @title = "Home"
    @body_class = "home"
  end

  def privacy
  end

  def contact
    @title = "Contact Us"
    @body_class = "contact-us"
  end

end
