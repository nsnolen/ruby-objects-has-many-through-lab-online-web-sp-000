class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all << self
  end

  def initialize(name)
    @name = name
    all
  end

  def new_song(name, genre)
  end
end
