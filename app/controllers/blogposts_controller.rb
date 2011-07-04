class BlogpostsController < ApplicationController
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
  end

  def create
    @blogpost = Blogpost.new(params[:blogpost])
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
    redirect_to blogposts_url, :notice => "Successfully destroyed blogpost."
  end
end
