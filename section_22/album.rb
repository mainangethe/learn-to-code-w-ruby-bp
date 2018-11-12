# An Album class that stores an array of songs
class Album
    include Enumerable

    # An array object of songs. Each song is a String object
    attr_reader :songs

    # Iniitalizes a new Album instance with an empty songs array
    def initialize
        @songs = []
    end

    # Add a song to the Album object's songs array
    def add_song(new_song)
        songs << new_song
    end

     # Yield each in song in the album to a block
    def each
        songs.each { |song| yield song }
    end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Billie Jean")
p thriller.songs
