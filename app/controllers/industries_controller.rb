class IndustriesController < ApplicationController
  def index
    @industries = Industry.order("name")
    @industry = Industry.new
    render :layout => "admin"
    
  end

  def show
    @industry = Industry.find(params[:id])
  end

  def new
    @industry = Industry.new
  end

  def create
    @industry = Industry.new(params[:industry])
    if @industry.save
      redirect_to industries_url, :notice => "Successfully created industry."
    else
      render :action => 'new'
    end
  end

  def edit
    @industry = Industry.find(params[:id])
  end

  def update
    @industry = Industry.find(params[:id])
    if @industry.update_attributes(params[:industry])
      redirect_to industries_url, :notice  => "Successfully updated industry."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy
    redirect_to industries_url, :notice => "Successfully destroyed industry."
  end
end
