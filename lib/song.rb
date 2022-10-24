# require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |key, value = 1|

      if(@@genre_count.include?(key))
        @@genre_count[key] += 1
      else
        @@genre_count[key] = value
      end

    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |key, value = 1|
      if(@@artist_count.include?(key))
        @@artist_count[key] += 1
      else
        @@artist_count[key] = value
      end
    end

    @@artist_count
  end

end

# binding.pry