require 'pry'
class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    @@song_count += 1
    new_song.artist = self
    @songs << new_song
  end

  def add_song_by_name(song_name)
    @@song_count += 1
    song_name = Song.new(song_name)
    @songs << song_name
    song_name.artist = self
  end

  def self.song_count
    @@song_count
  end
end
