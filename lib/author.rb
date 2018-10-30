class Author
  attr_accessor :name, :posts
  @@authors = []
  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end
  def add_post(post)
    post.author = self
    @posts << post
  end
  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end
  def self.post_count
    @@authors.collect{|author| author.posts}.flatten.count
  end

end
