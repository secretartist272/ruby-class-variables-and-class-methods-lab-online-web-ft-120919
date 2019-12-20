require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@artist = []
  @@genre = []
  
  def initialize(genre,name, artist)
    @name = name
    @count = count
    @artist = artist
    @@count += 1 
    @@artist << artist
    @@genre << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artist
    @@artist.uniq
  end
  
  def self.genres
    @@genres.uniq
    binding.pry
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end
end