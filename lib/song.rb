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
    artist_name=(artist)
    song 
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    Artist.add_song(song)
  end
    

end