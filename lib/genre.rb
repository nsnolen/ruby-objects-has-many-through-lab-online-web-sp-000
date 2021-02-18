class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs(song, artist)
    Song.new(song, artist, self)
  end

end
