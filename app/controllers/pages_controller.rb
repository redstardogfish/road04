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
  
  def what_we_do
    @title = "What We Do"
    @body_class = "what"
  end
  
  def accordion
  
  end
  
  def test
    @ua = request.env['HTTP_USER_AGENT']
    @ul = request.env['HTTP_ACCEPT_LANGUAGE']
    @ra = request.env['REMOTE_ADDR']
    uri = URI.parse("http://api.hostip.info/country.php")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    @response = http.request(request)
    
  end
  
end
