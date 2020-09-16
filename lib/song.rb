require "pry"

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
    def self.artists
        @@artists.uniq
    end
    def self.genres
        unique_genres = @@genres.uniq
    end
    def self.genre_count
        genre_counts = {}
        @@genres.each do |genre|
            !genre_counts[genre] ? genre_counts[genre] = 1 : genre_counts[genre] += 1
        end
        genre_counts
    end
    def self.artist_count
        artist_counts = {}
        @@artists.each do |artist|
            !artist_counts[artist] ? artist_counts[artist] = 1 : artist_counts[artist] += 1
        end
        artist_counts
    end
end

#binding.pry