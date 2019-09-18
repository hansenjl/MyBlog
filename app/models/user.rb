class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :commented_posts, through: :comments, source: :post
  has_secure_password  #authenticate, validate password &/or password confirmation
  has_many :categories, through: :posts

  validates :username, :email, presence: true

  def self.most_active
    joins(:posts).group(:user_id).order("count(user_id) DESC").limit(3)
    # combine with posts   - JOIN
    # count the number of posts
    # sort desc  - ORDER

    # User.all.sort_by{|u|  - u.posts.count}
  end
end







