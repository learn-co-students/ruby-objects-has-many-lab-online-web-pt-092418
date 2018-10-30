require "pry"
class Artist
  attr_accessor :name, :songs
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name (sname)
    song = Song.new(sname)
    self.add_song(song)
  end

  def self.song_count
    @@artists.collect{|artist| artist.songs}.flatten.count
  end

end
