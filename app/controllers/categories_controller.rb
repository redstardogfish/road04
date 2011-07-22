class CategoriesController < ApplicationController
  def index
    if params[:q]
      @categories = Category.where("name like ?", params[:q] + '%')
    else
      @categories = Category.all
    end

    respond_to do |wants|
      wants.html
      wants.js
    end

  end
end
