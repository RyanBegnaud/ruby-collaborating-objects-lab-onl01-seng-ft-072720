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
    binding.pry
    if @@all.length <= 0
      object = Artist.new(name)
      object
    else
      @@all.each do |artist|
        if artist == name 
         binding.pry
         artist 
        else 
         name = Artist.new(name)
         name
         end
      end
    end
  end
end