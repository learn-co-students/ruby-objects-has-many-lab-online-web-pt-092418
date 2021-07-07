require 'pry'
class Post
   attr_accessor :author, :title, :author_name, :name
  @@all = [] 
  def initialize(title)
    @title = title
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def author_name
    if !self.author
      nil
    else 
      self.author.name
    end
  end

  end