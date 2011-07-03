class PortraitsController < ApplicationController
  def index
    @portraits = Portrait.all
  end

  def show
    @portrait = Portrait.find(params[:id])
  end

  def new
    @portrait = Portrait.new
  end

  def create
    @portrait = Portrait.new(params[:portrait])
    if @portrait.save
      redirect_to @portrait, :notice => "Successfully created portrait."
    else
      render :action => 'new'
    end
  end

  def edit
    @portrait = Portrait.find(params[:id])
  end

  def update
    @portrait = Portrait.find(params[:id])
    if @portrait.update_attributes(params[:portrait])
      redirect_to @portrait, :notice  => "Successfully updated portrait."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @portrait = Portrait.find(params[:id])
    @portrait.destroy
    redirect_to portraits_url, :notice => "Successfully destroyed portrait."
  end
end
