class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each { |item| !hash.include?(item) ? hash[item] = 1 : hash[item] += 1 }
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each { |item| !hash.include?(item) ? hash[item] = 1 : hash[item] += 1 }
    hash
  end

end