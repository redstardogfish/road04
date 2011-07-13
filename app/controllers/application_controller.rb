class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user 
  helper_method :admin?
  
  before_filter :fetch_logged_user
  
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


end



