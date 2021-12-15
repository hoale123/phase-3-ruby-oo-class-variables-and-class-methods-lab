require "pry"
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
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
    # This array should only contain unique artists––no repeats!
    def self.genres
       @@genres.uniq
    end

    # binding.pry

    
    def self.genre_count
        @@genres.tally
    end
    
    def self.artist_count 
        @@artists.tally
    end
    
    # def self.genre_count
    #     genre_count = Hash.new(0) #default at 0
    #     @@genres.each {|genre| genre_count[genre] += 1}
    #     genre_count
    # end

    # def self.artist_count
    #     artist_count = Hash.new(0)  #default at 0
    #     @@artists.each {|artist| artist_count[artist] += 1}
    #     artist_count
    # end
    
    
    
    
end
