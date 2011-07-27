class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user 
  helper_method :admin?
  
  before_filter :fetch_logged_user

  after_filter :render_spelling
  
  private
  def current_user
    @current_user ||= Person.find(session[:user_id]) if session[:user_id]
  end
  
  def admin?
    current_user.admin? if session[:user_id]
  end

  def authenticate
    unless @logged_user
      #unauthorized access
      redirect_to root_path
      return false
    end
  end

  def fetch_logged_user

    unless session[:user_id].blank?
      @logged_user = Person.find(session[:user_id])
    end

  rescue ActiveRecord::RecordNotFound
  end


  def render_spelling
    @words = Word.all
    if user_country == "XX"
      @words.each do |word| 
          response.body  = response.body.gsub((/#{Regexp.escape(word.us)}[^_A-Z]/)) {|w| word.uk+w[-1,1]} 
          response.body = response.body.gsub(/#{Regexp.escape(word.us.capitalize)}[^_A-Z]/){|w| word.uk.capitalize+w[-1,1]} 
          response.body = response.body.gsub(/#{Regexp.escape(word.us.upcase)}[^_A-Z]/){|w| word.uk.upcase+w[-1,1]} 
      end  
    end
    if user_country != "XX"
      @words.each do |word| 
          response.body  = response.body.gsub((/#{Regexp.escape(word.uk)}[^_A-Z]/)) {|w| word.us+w[-1,1]} 
          response.body = response.body.gsub(/#{Regexp.escape(word.uk.capitalize)}[^_A-Z]/){|w| word.us.capitalize+w[-1,1]} 
          response.body = response.body.gsub(/#{Regexp.escape(word.uk.upcase)}[^_A-Z]/){|w| word.us.upcase+w[-1,1]} 
      end  
    end


  end
  
  def user_country
    @location ||= begin
      ip = request.env['REMOTE_ADDR']
      location = GeoLocation.find(ip)  
    end
    @location[:country_code]
  end
  

end



