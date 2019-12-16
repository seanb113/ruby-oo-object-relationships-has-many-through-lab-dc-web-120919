class Artist
    attr_reader :name 
    attr_accessor :songs

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
    Song.all.select{|title| title.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map(&:genre)
    end

end

