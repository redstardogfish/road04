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
      unless Person.find_by_email(params[:email])
        flash.now[:alert] = "Can't find that email"
      else
        flash.now[:alert]= "Invalid email or password"
      end
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice  => "Logged out"
  end


  def set_geolocation
    session[:location] = {:country_code=> params[:country_code]}
  end

end
