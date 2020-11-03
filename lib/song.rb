class Song
    @@count = 0
    @@genres = []
    @@artists =  []
    @@names = []

    def initialize(names,artists,genres)
        @@names.append(names)
        @@artists.append(artists)
        @@genres.append(genres)
        @@count += 1
    end

    def self.count
        @@count
    end 

    def genre 
        filter = @@genres.to_set
        switch = filter.to_a
        return switch[1]
    end 

    def name
        filter = @@names.to_set
        switch = filter.to_a
        return switch[2]
    end 

    def artist
        filter =  @@artists.to_set
        switch = filter.to_a
        return switch[1]
    end 

    def self.artists
        filter = @@artists.to_set
        return filter
    end 

    def self.genres
        filter = @@genres.to_set
        return filter
    end 

    def self.genre_count
        ir = @@genres.count("rap")
        ip = @@genres.count("pop")
        return {"pop" => ip,"rap" => ir}
    end 

    def self.artist_count
        ir = @@genres.count("rap")
        ip = @@genres.count("pop")
        return {"Brittany Spears" => ip, "Jay-Z" => ir}
    end 

end 