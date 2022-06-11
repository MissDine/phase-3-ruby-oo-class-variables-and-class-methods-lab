class Song
    # Macro methods
    attr_accessor :name, :artist, :genre
  
    #class methods
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
  
  
  
    def initialize(name, singer, genre)
      @name = name
      @artist = singer
      @genre = genre
      @@count += 1
      @@artists << @artist
      @@genres << @genre
    end
  
    def self.artists
      @@artists.uniq!
    end
  
    def self.genres
      @@genres.uniq!
    end
    
    def self.count
      @@count
    end
  
    def self.artist_count
      @@artist_count.default = 0
  
      @@artists.each { |artist| @@artist_count[artist] += 1}
  
      @@artists.each {|a| "#{a} : #{@@artist_count[a]}" }
      @@artist_count
    end
  
    def self.genre_count
      @@genre_count.default = 0
      @@genres.each{|genre| @@genre_count[genre] +=1}
      # @@genres.each {}
      @@genre_count
    end
  
  end
  
  Song.new("Lucifer", "Jay-Z", "rap")
  Song.new("99 Problems", "Jay-Z", "rap")
  Song.new("hit me baby one more time", "Brittany Spears", "pop")