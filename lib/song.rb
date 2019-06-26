class Song
    @@count = 0
    @@genres = []
    @@artists = []
    @@names = []

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        populateArrays(name, artist, genre)
    end

    def populateArrays (name,artist,genre)
        addElement(name,@@names)
        addElement(artist,@@artists)

        addElement(genre,@@genres)
    end

    def addElement (element, array)
        array << element
        #array.uniq!
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.keysFromArray (array, initVal=0)
        newHash = {}
        array.uniq.each do |element|
            newHash[element] = initVal
        end
        newHash
    end

    def self.fillHash (hash, array)
        array.each do |element|
            hash[element] += 1
        end
        hash
    end

    def self.genre_count
        fillHash(keysFromArray(@@genres),@@genres)
    end

    def self.artist_count
        fillHash(keysFromArray(@@artists),@@artists)
    end
end

# hey = Song.new("a","b","c")
# hey1 = Song.new("a","b","g")
# hey2 = Song.new("a","b","c")

# puts Song.genres