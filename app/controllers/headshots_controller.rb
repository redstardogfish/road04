class HeadshotsController < ApplicationController
  def index
    @headshots = Headshot.all
  end

  def show
    @headshot = Headshot.find(params[:id])
  end

  def new
    @headshot = Headshot.new
  end

  def create
    @headshot = Headshot.new(params[:headshot])
    if @headshot.save
      redirect_to @headshot, :notice => "Successfully created headshot."
    else
      render :action => 'new'
    end
  end

  def edit
    @headshot = Headshot.find(params[:id])
  end

  def update
    @headshot = Headshot.find(params[:id])
    if @headshot.update_attributes(params[:headshot])
      redirect_to @headshot, :notice  => "Successfully updated headshot."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @headshot = Headshot.find(params[:id])
    @headshot.destroy
    redirect_to headshots_url, :notice => "Successfully destroyed headshot."
  end
end
