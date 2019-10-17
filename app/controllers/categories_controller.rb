class CategoriesController < ApplicationController
  def index
    @categories = Category.all.includes(:posts)
  end

  def show
     @category = Category.find_by_id(params[:id])
  end
end
