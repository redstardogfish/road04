class ClientsController < ApplicationController
  def index
    @full_industries = Industry.order("name")
    @industries = []
    @full_industries.each do |industry|
      addIndustry = false
      for client in industry.clients
        addIndustry = true if client.display
      end
      @industries << industry if addIndustry
    end
    @client = Client.new
    @title = "Our Clients"
    @body_class = "content"
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
    @industries = Industry.all
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to clients_list_url, :notice => "Successfully created client."
    else
      render :action => 'new'
    end
  end

  def edit
    @client = Client.find(params[:id])
    @industries = Industry.all
  end

  def update
    @client = Client.find(params[:id])
   if @client.update_attributes(params[:client])
      redirect_to clients_list_url, :notice  => "Successfully updated client."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_list_url, :notice => "Successfully destroyed client."
  end
  
  def listing
    @industries = Industry.order("name")
    @clients = Client.all
    @client = Client.new
    render :layout => "admin"
    
  end
  
end
