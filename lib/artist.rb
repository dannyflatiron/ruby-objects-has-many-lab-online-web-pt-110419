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
    # the add_song method already provides the code necessary to associate song and artist
    # how do I use it?
    # I need to pass an argument into add_song
    # cannot pass song_name because it is not a new song
    # create a variable to store new song
    song = Song.new(song_name)
    add_song(song)
    # binding.pry
  end

  def self.song_count
    # how do I get the total # of songs associate to all existing artistd?
    # where are the songs associated to all the artists?
    self
  end

end
