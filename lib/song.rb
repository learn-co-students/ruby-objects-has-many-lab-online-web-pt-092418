class Song
   attr_accessor :artist, :song, :name
    @@all = []
  
  def initialize(name)
    #  @song = song
    #  @artist_name = artist_name
     @name = name
     @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
   if  !@artist
    nil 
   else
    self.artist.name
   end
  end

 end