class Author 

  attr_accessor :name, :songs 

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

 def songs
   Song.all.select do |song|
     song.artist ==  self 
   end 
 end 

def add_song(song)
  song.artist = self 
end 

def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

 def self.song_count
    Song.all.count
  end

end