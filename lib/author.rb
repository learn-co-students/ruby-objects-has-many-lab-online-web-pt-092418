require 'pry'
class Author

  attr_accessor :name, :posts
  @@counter = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(new_post)
    new_post.author = self
    @posts << new_post
    @@counter += 1
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@counter += 1
  end

  def self.post_count
    @@counter
  end
end
