class CasestudiesController < ApplicationController
  def index
    @casestudies = Casestudy.all
  end

  def show
    @casestudy = Casestudy.find(params[:id])
  end

  def new
    @casestudy = Casestudy.new
  end

  def create
    @casestudy = Casestudy.new(params[:casestudy])
    if @casestudy.save
      redirect_to casestudies_url, :notice => "Successfully created casestudy."
    else
      render :action => 'new'
    end
  end

  def edit
    @casestudy = Casestudy.find(params[:id])
  end

  def update
    @casestudy = Casestudy.find(params[:id])
    if @casestudy.update_attributes(params[:casestudy])
      redirect_to casestudies_url, :notice  => "Successfully updated casestudy."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @casestudy = Casestudy.find(params[:id])
    @casestudy.destroy
    redirect_to casestudies_url, :notice => "Successfully destroyed casestudy."
  end
  
  def display
    @casestudy = Casestudy.find(params[:id])
    render :layout => false
    
  end
  
  
  
end
