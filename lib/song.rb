class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @@artist << @artist
    @@genres << @genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genre
    @@genres 
  end
  
  def self.artists
    puts "#{all of the artists of the existing songs}"
end

def self.genre_count
   genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else 
        genre_count[genre] = 1 
      end
    end
    genre_count
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
end
end