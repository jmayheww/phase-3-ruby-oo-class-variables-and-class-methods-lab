require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def self.count
    @@count
  end

  def self.genres
    @@genres.map { |genre| genre }.uniq
  end

  def self.artists
    @@artists.map { |artist| artist }.uniq
  end

  def self.genre_count
    @@genres.map { |genre| genre }.tally
  end

  def self.artist_count
    @@artists.map { |artist| artist }.tally
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end
end
