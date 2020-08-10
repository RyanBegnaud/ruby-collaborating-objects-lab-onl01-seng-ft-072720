class Song 
  attr_accessor :name, :artist
  attr_reader :artist_name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
    file = filename.split("-")
    artist = file[0].strip 
    song = file[1].strip 
    song_new = Song.new(song)
    song_new.artist_name(artist)
    song 
  end
  
  def artist_name=(name)
    name = Artist.new(name)
  end
    

end