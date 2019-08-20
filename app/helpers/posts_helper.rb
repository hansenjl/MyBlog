module PostsHelper
  def index_display_header
    if @user
      content_tag(:h1, "#{@user.username}'s Posts:")
    else
      content_tag(:h2, "All Posts")
    end
  end

  def display_posts
    if @user.posts.empty?
      tag.h2(link_to('No posts yet - write a post here', new_post_path))
    else
      content_tag(:h2, "Your Posts:")

    end
  end

end
