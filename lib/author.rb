class Author 
  attr_accessor :name, :posts

  @@post_counter = 0
  def initialize(name)
    @name = name
    @posts = []
  end 

  def add_post(post)
    @posts << post 
    post.author = self 
    @@post_counter += 1 
  end 

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@post_counter += 1
  end

  def self.post_count
    @@post_counter
  end

end 