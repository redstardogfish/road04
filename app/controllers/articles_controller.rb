class ArticlesController < ApplicationController
  before_filter :authenticate, :except => [:index, :display] 
  
  def index
    @articles = Article.all
    @title = "Articles"
    @body_class = "blogListing"
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @people = Person.all
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to articles_list_path, :notice => "Successfully created article."
    else
      render :action => 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to articles_list_path, :notice  => "Successfully updated article."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_url, :notice => "Successfully destroyed article."
  end
  
  def display
    @article = Article.find(params[:id])
    @title = "Articles"
    @body_class = "content"
  end
  
  def select
    @articles = Article.all
    @people = Person.all
    @title = "Articles"
    @body_class = "blogListing"
  end
  
  def listing
    @articles = Article.all

  end

end
