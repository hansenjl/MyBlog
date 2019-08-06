class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :commented_posts, through: :comments, source: :post
  has_secure_password  #authenticate, validate password &/or password confirmation
 #has_many :categories, through: :posts



end
