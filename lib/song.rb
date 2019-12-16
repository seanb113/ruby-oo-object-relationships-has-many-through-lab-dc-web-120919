class Song
    
    attr_reader :title, :artist, :genre

    @@all = []

    def initialize(title, artist, genre)
        @title, @artist, @genre = title, artist, genre
        @@all << self
    end

    def self.all
        @@all
    end

    
end



