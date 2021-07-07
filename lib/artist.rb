class Artist 
  attr_accessor :name, :songs 

  @@song_counter = 0 

  def initialize(name)
    @name = name 
    @songs = []
  end 

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
    @@song_counter += 1 
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name) 
    new_song.artist = self
    @songs << new_song
    @@song_counter += 1
  end 

  def self.song_count 
    @@song_counter
  end 
 
end 