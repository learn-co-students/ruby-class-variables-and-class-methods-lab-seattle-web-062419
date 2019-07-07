require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0 # implicit: "song" count
    @@genres = []
    @@artists = []
    GENRECT = {}
    ARTHASH = {}
    GNRHASH = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
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
        @@genres.each do |genre|
            GNRHASH[genre] = @@genres.count(genre)
        end
        GNRHASH
    end

    def self.artist_count
        @@artists.each do |artist|
            ARTHASH[artist] = @@artists.count(artist)
        end
        ARTHASH
    end
    
end