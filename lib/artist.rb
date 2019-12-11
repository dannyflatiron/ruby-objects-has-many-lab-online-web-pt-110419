require 'pry'
class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @song = []
    # we have to store all the artist's songs
  end

  def songs
    # I need to create a relationship between the songs of an artist aka Song class to the instance of an artist in the Artist class
    #which method in the Song class stores all the songs? Use that method by
    #has to return an array
    Song.all.select {|song| song.artist == self}
    #iterating over the array located in the self.all method in the Song class to return a new array
    # binding.pry
  end

  def add_song(song)
    song.artist = self
    # the song belongs to the artist
  end

  def add_song_by_name(song_name)
    song_name = Song.new
    
  end

end
