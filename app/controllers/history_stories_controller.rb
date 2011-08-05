class HistoryStoriesController < ApplicationController
    before_filter :authenticate
  # GET /history_stories
  # GET /history_stories.xml
  def index
    @history_stories = HistoryStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @history_stories }
    end
  end

  # GET /history_stories/1
  # GET /history_stories/1.xml
  def show
    @history_story = HistoryStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @history_story }
    end
  end

  # GET /history_stories/new
  # GET /history_stories/new.xml
  def new
    @history_story = HistoryStory.new
    @clients = Client.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @history_story }
    end
  end

  # GET /history_stories/1/edit
  def edit
    @history_story = HistoryStory.find(params[:id])
    @clients = Client.all
  end

  # POST /history_stories
  # POST /history_stories.xml
  def create
    @history_story = HistoryStory.new(params[:history_story])
    @clients = Client.all
    respond_to do |format|
      if @history_story.save
        format.html { redirect_to(history_stories_url, :notice => 'History story was successfully created.') }
        format.xml  { render :xml => history_stories_url, :status => :created, :location => @history_story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @history_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /history_stories/1
  # PUT /history_stories/1.xml
  def update
    @history_story = HistoryStory.find(params[:id])
    @clients = Client.all
    respond_to do |format|
      if @history_story.update_attributes(params[:history_story])
        format.html { redirect_to(history_stories_url, :notice => 'History story was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @history_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /history_stories/1
  # DELETE /history_stories/1.xml
  def destroy
    @history_story = HistoryStory.find(params[:id])
    @history_story.destroy

    respond_to do |format|
      format.html { redirect_to(history_stories_url) }
      format.xml  { head :ok }
    end
  end
end
