require "pry"
class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    song.artist = self 
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
   test = @@all.detect {|artist| artist.name == name}
   if test == nil 
     object = Artist.new(name)
     object 
   else 
     test 
   end
  end
  
  def print_songs 
    self.songs.each do |song| 
      puts song.name 
    end 
    binding.pry
  end
end