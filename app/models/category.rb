class Category < ApplicationRecord
  has_many :posts


  def self.order_by_most_posts
    left_joins(:posts).group(:category_id).order('count(posts.id) DESC')
  end

end
