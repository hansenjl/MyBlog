class CategoriesController < ApplicationController
  def index
    @categories = Category.order_by_most_posts.includes(:posts)
  end
end
