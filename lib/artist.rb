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

  # def add_song(song)
    # according to the test "expected [] to include Songclass object"
    # ^this means I have to shovel self into an array
    #where is the array?
    # when does an artist add another song to their list? When they write the song....therefore....it is the Artist's responsbility to add a new song to their collection not the song itself
  # end

end
