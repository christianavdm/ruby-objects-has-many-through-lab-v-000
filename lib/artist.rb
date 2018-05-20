require 'pry'

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    @songs << song
    song.artist = self
  end
  
  def songs 
    songs = Song.all.select { |song| song.artist == self }
    binding.pry
  end
  
  def genres 
    
  end
  
end