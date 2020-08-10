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
    if @@all.length >= 1
     @@all.each do |artist|
        if artist.name == name.name
         artist 
        else 
         name = Artist.new(name)
         name
        end
       end
    else
      object = Artist.new(name)
      object
    end
  end
end