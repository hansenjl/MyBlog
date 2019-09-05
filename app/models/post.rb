class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :users, through: :comments
  validates :content, :title, presence: true
  validate :too_many_posts

  scope :alpha, -> { order(:title) }
  scope :most_comments, -> {left_joins(:comments).group('posts.id').order('count(comments.post_id) desc')}

  def self.search(term)
    joins(:category).where("lower(posts.title) LIKE :search OR lower(posts.content) LIKE :search OR lower(comments.content) LIKE :search OR lower(categories.name) LIKE :search", search: "%#{term}%")
  end

  def self.filter(search_category_id)
    where("category_id = ?", search_category_id)
  end

  def category_attributes=(attr)
    self.category = Category.find_or_create_by(attr) if !attr[:name].blank?

    # errors.add(:category, category.errors.full_messages)
  end

  def too_many_posts
    # are there already 3 posts added to the database with created_at as the current date
    #iterate over user's posts
    today_posts = user.posts.select do |p|
      p.created_at.try(:to_date) == Date.today
    end

    if today_posts.size > 2
      errors.add(:post_id, "- can't post more than 3 times per day.")
    end

  end


end
