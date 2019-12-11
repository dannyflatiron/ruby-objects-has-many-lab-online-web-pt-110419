class Post

  @@all = []

  attr_accessor :title
  attr_reader :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
  end

  def self.all
    @@all
  end

  def author_name
    author.name if author
  end
end
