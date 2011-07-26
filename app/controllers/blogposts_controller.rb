class BlogpostsController < ApplicationController
  before_filter :authenticate, :except => [:index, :display] 
  
  def index
    @blogposts = Blogpost.all
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
    @blogpost.teaser = @blogpost.content[1..250] + "..."
    if @blogpost.save
      redirect_to @blogpost, :notice => "Successfully created blogpost."
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
      redirect_to @blogpost, :notice  => "Successfully updated blogpost."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    redirect_to blogposts_list, :notice => "Successfully destroyed blogpost."
  end
  def listing
    @blogposts = Blogpost.all
  end
  
  def display
    @blogpost = Blogpost.find(params[:id])
    @title = @blogpost.title
    @body_class = "blogDetail"
  end
end
