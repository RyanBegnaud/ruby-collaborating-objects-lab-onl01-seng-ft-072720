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
     @@all.each do |artist|
       binding.pry
       if artist == name 
         artist 
         binding.pry
       else 
         name = Artist.new(name)
         name
         binding.pry
       end
     end
  end
end