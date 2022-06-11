class Song
    @@genre_count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name,
        @artist = artist,
        @genre = genre

        @@genre_count += 1
        @@genres << genre
        @@artists << artist
    end 
    
    def hit_me
        puts "hit me baby one more time"
    end    
    
    def self.genre_count
        "#{@@genre_count}"
    end 
    
    def self.artists
        @@artists.uniq
    end 
    
    def self.genres
        @@genres.uniq
    end
end    