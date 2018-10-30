class Song
  attr_accessor :title, :artist
  attr_reader :name
  @@all = []
  def initialize(title)
    @title = title
    @name = title
    @@all << self
  end
  def self.all
    @@all
  end
  def artist_name
    self.artist ? self.artist.name : nil
  end

end
