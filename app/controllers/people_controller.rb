class PeopleController < ApplicationController
  before_filter :authenticate, :except => [:index, :display, :display_box]
  
  def index
    @people = Person.order(:last_name).where(:display => true)
    @tgs = Person.where(:first_name => "Tony", :last_name => "Golsby-Smith").first
    @title = "Our Community"
    @body_class = 'peopleListing'
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to @person, :notice => "Successfully created person."
    else
      render :action => 'new'
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to people_list_path, :notice  => "Successfully updated person."
    else
      render :action => 'edit'
    end
  end
  
  def update_password
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to root_path       
    else
      render :action => 'change_password'
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_list_url, :notice => "Successfully destroyed person."
  end
  
  
  def listing
    @people = Person.all
    @body_class = 'admin'
    render :layout => "admin"
  end
  
  
  def display
    @person = Person.find(params[:id])
    @title = "People listing"
    @body_class = "people-detail"
  end
  def display_box
    @person = Person.find(params[:id])
    render :layout => false
  end
  
  def change_password
    @person = Person.find(session[:user_id])
  end
  
  
  
end
