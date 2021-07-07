class Author
   attr_accessor :post, :name
  @@post = []
  def initialize(name)
     @name = name
     @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    @posts << post
    @@post << post
    post.author = self
  end
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    @@post << post
    post.author = self
  end
  def self.post_count
    @@post.count
  end
 end