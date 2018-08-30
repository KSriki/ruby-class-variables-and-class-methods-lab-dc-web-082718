class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
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
        un = @@genres.uniq
        ans = {}
        un.each do |genre|
            ans[genre] = @@genres.count(genre)
        end
        ans
    end

    #bad DRY
    def self.artist_count
        un = @@artists.uniq
        ans = {}
        un.each do |artist|
            ans[artist] = @@artists.count(artist)
        end
        ans
    end





end
