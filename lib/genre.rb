class Genre 
  attr_accessor :name 
  
  def initialize(name) 
    @name = name 
  end
  
  def songs 
    Song.all.collect {|song| song.genre == self}
  end
end