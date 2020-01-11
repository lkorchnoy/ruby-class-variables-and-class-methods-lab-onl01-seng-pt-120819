class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genre = []
  
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @@artists << self
    @@genres << self
    
  end
  
  def self.count
    @@count
  end
  
  def self.genre
    @@genres.uniq(&:genre)
  end
  
  def self.artists
    @@artists.uniq(&:artist)
  end

def self.genre_count
  
 [genre].uniq { |genre| [genre.name, genre_count] }
   
end

def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end





end

