class SessionsController < ApplicationController
  def new
  end
  def create
    user = Person.authenticate(params[:email], params[:password])

    if user
      using_default_password = Person.authenticate(params[:email], "pass")
      session[:user_id] = user.id
      if using_default_password
        redirect_to "/change_password", :notice => " - Please change your password"
      else
        redirect_to root_url, :notice  => "Logged in"
      end
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice  => "Logged out"
  end

end
