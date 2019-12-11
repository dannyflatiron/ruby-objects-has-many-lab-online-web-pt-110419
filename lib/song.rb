class Song

@@all = []

attr_accessor :name
attr_reader :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all 
    @@all
  end

  def artist_name
    artist.name if artist
  end
end
