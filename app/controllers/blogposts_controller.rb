class BlogpostsController < ApplicationController
  before_filter :authenticate, :except => [:index, :display] 
  before_filter :check_for_cancel, :only => [:create, :update]
  def index
    @blogposts = Blogpost.order("date DESC")
    @title = "Blog"
    @body_class = "blogListing"
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def new
    @blogpost = Blogpost.new
    @blogpost.author = current_user.name
    @blogpost.enable_comments = true
  end

  def create
    @blogpost = Blogpost.new(params[:blogpost])
    @blogpost.teaser = @blogpost.content[0..250] + "..." if @blogpost.content.present?
    if @blogpost.save
      redirect_to blogposts_path, :notice => "Successfully created blogpost."
    else
      render :action => 'new'
    end
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  def update
    @blogpost = Blogpost.find(params[:id])
    if @blogpost.update_attributes(params[:blogpost])
      redirect_to :action => 'display', :notice  => "Successfully updated blogpost."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    redirect_to blogposts_path, :notice => "Successfully destroyed blogpost."
  end
  def listing
    @blogposts = Blogpost.all
    render :layout => "admin"
    
  end
  
  def display
    @blogpost = Blogpost.find(params[:id])
    @title =  "Blog"
    @body_class = "blogDetail"
  end
  
  
  private

    def check_for_cancel
      if params[:commit] == "Cancel"
        redirect_to blogposts_path
      end
    end  
  
end
