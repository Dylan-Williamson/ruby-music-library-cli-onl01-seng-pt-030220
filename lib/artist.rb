class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def self.all
    @@all 
  end
  
  def self.create(name)
    self.new(name)
  end
  
  def add_song(song)
    if song.artist != self
      song.artist = self
    end
    
    if !@songs.include?(song)
      @songs << song
    end
  end
  
end