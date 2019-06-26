require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0 # implicit: "song" count
    @@genres = []
    @@artists = []
    GENRECT = {}
    # ARTCT = ?
    GNRHASH = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def count
        @@count
    end

    def artists

    end

    def genres
        @@genres.uniq
    end
    binding.pry
    def genre_count
        binding.pry
        #use GNRHASH here to add collect results as key/value pair
        @@genres.collect {|x|
            @@genres.count(x)
        }
    end

    def artist_count
        # @@artists.collect {|x|

        # }
    end
    
end