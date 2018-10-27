require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name #new is initialized with a name
    #name has an attr_accessor for name
    @songs = [] #songs has many songs
  end

  def add_song(song)
    @songs << song
    song.artist = self    #uses the class as a method. takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
  end

  def add_song_by_name(name)
    song = Song.new(name) #creates a new song with a name
    @songs << song #pushes new song into all songs
    song.artist = self #associates the song and artist
  end

  def self.song_count
    @@all.count
   # is a class method that
   # returns the total number of
   # songs associated to all
   # existing artists
  end
end
