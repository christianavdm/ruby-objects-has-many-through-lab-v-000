class Genre 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    @@all.collect {|song| song.artist}
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end
end