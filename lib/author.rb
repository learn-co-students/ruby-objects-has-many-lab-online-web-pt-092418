require 'pry'

class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name #new is initialized with a name
    #name has an attr_accessor for name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self #uses the class as a method. takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
  end

  def add_post_by_title(title)
    post = Post.new(title) #creates a new post with a author
    @posts << post
    post.author = self #associates the song and artist
  end

  def self.post_count
    @@all.count
   # is a class method that
   # returns the total number of
   # songs associated to all
   # existing artists
  end
end
